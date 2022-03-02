from z3 import *
from invar_synth.protocols.protocol import ModelId, StateId
import subprocess
from pathlib import Path
import os.path as path

from invar_synth.utils.qexpr import QExpr

class MiniSyWrapper():
    def __init__(self, run_name=None):
        mydir = Path(path.dirname(path.abspath(__file__)))

        if run_name is not None:
            file_loc = mydir/'../cegis/run_files/'
            if not file_loc.exists():
                file_loc.mkdir()
            file_count = len([f for f in file_loc.iterdir()])
            run_name = str(file_count) + '_' + run_name + '.sy'
            self.file_loc = (file_loc / run_name).resolve()
        else:
            self.file_loc = (mydir/'../cegis/test_synth.sy').resolve()

        self.minisy_path = mydir/'../../../mini-sygus/scripts/minisy'
        assert self.minisy_path.exists()
        self.minisy_path = self.minisy_path.resolve()

    def invoke(self, synth_str, min_depth, max_depth):
        synth_file = self.file_loc
        with open(synth_file,'w') as f:
            f.write(synth_str)
        
        cmd = f'{self.minisy_path} {synth_file} --min-depth={min_depth} --max-depth={max_depth}'
        print(f"Running {cmd}")
        out = subprocess.check_output(
            cmd,
            shell=True,
            #executable="/bin/zsh",
            encoding='utf-8'
        )
        lines = out.split('\n')
        defs = []
        for line in lines:
            line = line.strip()
            if line == 'sat' or line == '':
                continue
            if line == 'unsat':
                break
            if line.startswith('(define-fun'):
                defs.append(line)
            else:
                defs[-1] += '\n' + line

        return [d.strip() for d in defs]
    
    def parse_inv_defn_v2(self, tmpl_quantifiers, tmpl_sorts, defn):
        defn += "\n"
        sort_counts = {}

        args_names = []
        for q, s in zip(tmpl_quantifiers, tmpl_sorts):
            sort_counts[s] = sort_counts.get(s, 0) + 1
            count = sort_counts[s]
            pref = s.name()[0].lower()
            name = pref + str(count)
            args_names.append(name)

        defn += f"(assert (inv m s {' '.join(args_names)}) )"
        # print(defn)
        # return

        def inv(M, S):
            sorts = {'StateId': StateId, 'ModelId': ModelId}
            for s in M.sorts:
                sorts[str(s)] = s
            
            decls = {'m': M.model_sym, 's': S.state_sym}
            for name, partial_func in \
                    list(M.globals.items()) + \
                    list(S.vars.items()):
                # need .func at the end because they're partials and not functions
                decls[name] = partial_func.func

            body = lambda *arg_vals: simplify(parse_smt2_string(
                defn, sorts=sorts,
                decls={**decls, **{name: val for name, val in zip(args_names, arg_vals)}}
            )[0])

            return QExpr(tmpl_quantifiers, tmpl_sorts, body)
        
        return inv

    def parse_inv_defn(self, quantifiers, sorts, defn):
        defn += "\n"
        sort_counts = {}

        indent = 1
        q_opens = ""
        q_closes = ""
        args = []
        for q, s in zip(quantifiers, sorts):
            sort_counts[s] = sort_counts.get(s, 0) + 1
            count = sort_counts[s]
            pref = s.name()[0].lower()
            name = pref + str(count)
            defn += f"(declare-fun {name} () {s.name()})\n"
            args += [name]
            q_opens += f"{('   ')*indent}({q.lower()} (({name} {s.name()}))\n"
            q_closes = f"{('   ')*indent})\n" + q_closes
            indent += 1

        defn += f"(assert\n{q_opens}{('   ')*indent}(inv m s {' '.join(args)})\n{q_closes})\n"
        # print(defn)
        # return

        def inv(M, S):
            sorts = {'StateId': StateId, 'ModelId': ModelId}
            for s in M.sorts:
                sorts[str(s)] = s
            
            decls = {'m': M.model_sym, 's': S.state_sym}
            for name, partial_func in \
                    list(M.globals.items()) + \
                    list(S.vars.items()):
                # need .func at the end because they're partials and not functions
                decls[name] = partial_func.func
            
            return simplify(parse_smt2_string(defn, sorts=sorts, decls=decls)[0])
        
        return inv

from invar_synth.protocols.protocol import *

class SynthGrammar:
    def __init__(self, M: ProtocolModel, rnd_seed):
        self.M = M
        self.S = S = M.get_state('init')
    
        self.types = M.sorts

        self.symbols = {
            name : fn.func
            for name, fn in list(M.globals.items()) + \
                            list(S.vars.items())
        }

        self.symbols_by_type = {
            fn.func.range() : fn.func
            for fn in list(M.globals.values()) + \
                        list(S.vars.values())
        }

        self.templ = """
(set-logic ALL)

(set-option :random-seed $seed)

(declare-sort ModelId)
(declare-sort StateId)

;; sorts
$sort_decls

;; universe
$universe_decls

;; symbols
$symbol_decls

(synth-fun inv ((m ModelId) (s StateId) ($inv_args) Bool

    ;; Declare the non-terminals that would be used in the grammar

    (
        (Start Bool)
        (Atom Bool)
        $non_terminals
    )

    ;; Define the grammar for allowed implementations of inv
    (
        (Start Bool
            (
                Atom
                (and Atom Atom)
                (or Atom Atom)
                (=> Atom Atom)
                (not Atom)
            )
        )

        (Atom Bool
            (
                $bool_predicates

                $equality_atoms

                (and Atom Atom)
                (or Atom Atom)
                (=> Atom Atom)
                (not Atom)
            )
        )
    )

"""
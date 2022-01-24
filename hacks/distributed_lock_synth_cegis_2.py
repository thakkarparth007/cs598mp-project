# %%

from z3 import *
from tqdm import tqdm
import itertools
from functools import partial

# %%

ModelId = DeclareSort('ModelId')
State = DeclareSort('State')
Node = DeclareSort('Node')
Epoch = DeclareSort('Epoch')

# %%

class DistLockState():
    def __init__(self, model_name, name):
        self.model_name = model_name
        self.name = name

        self.state_sym = Const(name, State)

        # relations
        self.ep = Function(f'ep', Node, Epoch)
        self.held = Function(f'held', Node, BoolSort())
        self.transfer = Function(f'transfer', Epoch, Node, BoolSort())
        self.locked = Function(f'locked', Epoch, Node, BoolSort())
#!/bin/env python3

import os
from tqdm import tqdm
from itertools import product

CHEAP = ['--no-cheap', '--cheap']
ID3 = ['--no-id3', '--id3']
ITER_DEEP = ['--no-iter-deep', '--iter-deep']
PROTOCOL = ['dist_lock'] # ricart_aggarwal not in this list because it's on a different branch currently.

TIME_LIMIT = 90
NUM_ITERS  = 10000

variants = list(product(CHEAP, ID3, ITER_DEEP, PROTOCOL))

for i, (cheap, id3, iter_deep, protocol) in enumerate(tqdm(variants)):
    run_name = f'eval_{i}_{cheap}_{id3}_{iter_deep}_{protocol}_90min'
    opts = f'--time-limit {TIME_LIMIT} --num-iters {NUM_ITERS}'

    cmd = f'./run.sh --run-name {run_name} {opts} {cheap} {id3} {iter_deep} --protocol {protocol} > ./eval_logs/{run_name}.log'

    print(f"Running {run_name}. Command:\n{cmd}")

    os.system(cmd)
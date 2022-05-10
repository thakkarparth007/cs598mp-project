# SETUP

- Make sure to clone the submodule (mini-sygus).
- Use `./run.sh` or `./run_eval.py` to run the code. Will spin up a docker container with all dependencies taken care of.
    - This is the same as running `./start-docker.sh` and then `cd ./src/invar_synth/; python main.py`. Any arguments you pass to `./run.sh` will be passed to `./src/invar_synth/main.py`. You can also redirect the output of `./run.sh` to a file and it'll work fine.
- Over time if any dead containers get accumulated, run `docker rm $(docker ps -aq)`.

Options available as of writing:
```
usage: main.py [-h] [--run-name RUN_NAME] [--learner LEARNER] [--protocol PROTOCOL] [--interactive] [--num-iters NUM_ITERS] [--time-limit TIME_LIMIT]
               [--max-depth MAX_DEPTH] [--max-terms MAX_TERMS] [--cheap] [--no-cheap] [--id3] [--no-id3] [--iter-deep] [--no-iter-deep]

optional arguments:
  -h, --help            show this help message and exit
  --run-name RUN_NAME
  --learner LEARNER
  --protocol PROTOCOL
  --interactive
  --num-iters NUM_ITERS
  --time-limit TIME_LIMIT
                        Time limit in minutes
  --max-depth MAX_DEPTH
  --max-terms MAX_TERMS
  --cheap
  --no-cheap
  --id3
  --no-id3
  --iter-deep           Apply iterative deepening on the grammar
  --no-iter-deep        Don't apply iterative deepening on the grammar
```
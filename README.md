# SETUP

- Make sure to clone the submodule (mini-sygus).
- Docker setup is recommended. Just run `./start-docker.sh` or `./run.sh`.
    - `./start-docker.sh` starts an interactive bash shell containing all dependencies.
    - `./run.sh` runs the main.py in a docker container. There's a minor startup penalty because of starting a new docker container, but deal with it. This is the same as running `./start-docker.sh` and then `cd ./src/invar_synth/; python main.py`. Any arguments you pass to `./run.sh` will be passed to `./src/invar_synth/main.py`. You can also redirect the output of `./run.sh` to a file and it'll work fine.
- Over time if any dead containers get accumulated, run `docker rm $(docker ps -aq)`.

Options available as of writing:
```
usage: main.py [-h] [--run-name RUN_NAME] [--learner LEARNER] [--protocol PROTOCOL] [--interactive] [--num-iters NUM_ITERS]
               [--time-limit TIME_LIMIT] [--max-depth MAX_DEPTH] [--max-terms MAX_TERMS] [--cheap] [--no-cheap] [--id3] [--no-id3]

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
```
FROM python:3.9.10-slim-buster

RUN apt update

RUN apt install -y git build-essential

# install z3
RUN git clone https://github.com/Z3Prover/z3
RUN cd ./z3; git checkout z3-4.8.14; python scripts/mk_make.py; cd build; make -j 3; make install;

RUN apt install -y wget zsh
# RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)"

WORKDIR /598mp

ENV PATH="/598mp/mini-sygus/scripts/:${PATH}"
ENV PYTHONPATH="/598mp/mini-sygus:/598mp/src:${PYTHONPATH}"

RUN pip install z3-solver tqdm pandas 

CMD ["sleep", "infinity"]
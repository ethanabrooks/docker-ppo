FROM pytorch/pytorch
RUN apt-get update && apt-get install -y \
  libglib2.0-0 \
  libsm6 \
  libxext6 \
  libxrender-dev
RUN python3 -m pip install --upgrade pip gym
COPY rl-utils/ /rl-utils
RUN python3 -m pip install -e /rl-utils
COPY setup.py /setup.py
RUN python3 -m pip install -e /
VOLUME ["/ppo"]
WORKDIR /ppo
COPY entrypoint.sh /entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]


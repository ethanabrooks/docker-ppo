FROM nvcr.io/nvidia/pytorch:19.10-py3
RUN pip install --upgrade pip gym
COPY rl-utils/ /rl-utils
RUN pip install -e /rl-utils
RUN conda remove wrapt
RUN pip install \
        "tensorboardX==1.8" \
        "tensorflow>=1.15" \
        "opencv-python==4.1.0.25" \
        "psutil==5.7.0" \
        "requests==2.22.0"
VOLUME ["/ppo"]
WORKDIR /ppo
COPY entrypoint.sh /entrypoint.sh


#ENTRYPOINT ["/entrypoint.sh"]


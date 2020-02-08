#! /usr/bin/env python

# third party
from setuptools import find_packages, setup

setup(
    name="ppo",
    version="0.0.0",
    long_description="",
    url="https://github.com/ethanabrooks/ppo",
    author="Ethan Brooks",
    author_email="ethanabrooks@gmail.com",
    entry_points=dict(console_scripts=["ppo=ppo.control_flow.main:cli"]),
    packages=find_packages(),
    install_requires=[
        "tensorboardX==1.8",
        "tensorflow>=1.15",
        "opencv-python==4.1.0.25",
        "psutil==5.6.3",
        "requests==2.22.0",
    ],
)

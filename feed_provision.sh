#! /usr/bin/env bash

function setupRepo() {
    cd /root/
    git clone $feedpuller_repo
    cd $feedpuller_path
}

function setupRequirements() {
    pip install -r requirements.txt
    echo """import sys, nltk;nltk.download('stopwords');sys.exit()""" >> /root/nsetup.py
    python /root/nsetup.py
    rm /root/nsetup.py
    cd parser
    npm install
}

function setupCron() {
    echo """function cleanupSystem {
    pkill python
    free -m
    sync; echo 3 | sudo tee -a /proc/sys/vm/drop_caches > /dev/null
    free -m
}

function startPull {
    cleanupSystem
    #nohup python /root/feedpuller/puller.py > /root/latest-pull.log 2>&1&
    nohup python /root/python-node-feedpuller/feed_puller.py > /root/latest-pull.log 2>&1&
}

startPull
""" >> /root/cron.sh
}


function setupFeedPuller() {
    setupRepo
    setupRequirements
    setupCron
}

setupFeedPuller
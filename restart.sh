function restart() {
    pkill python
    source /etc/profile;nohup python /root/feedpuller/puller.py > /root/latest-pull.log 2>&1&
}

restart
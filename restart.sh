function restart() {
    process=`ps aux|grep "[p]arser"|awk '{print $2}'`
    if [[ ${#process} -ne 0 ]]
    then
        kill $process
    fi
    # Oddly the -w/-n checks seem to fail in the process list check.
    # So, a string length check is added.
    source /etc/profile;nohup python /root/python-node-feedpuller/feed_parser.py > /root/latest-pull.log 2>&1&
}

restart

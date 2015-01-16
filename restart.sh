function restart() {
    process=`ps aux|grep [p]uller.py|awk '{print $2}'`
    if [[ ${#process} -ne 0 ]]
    then
        kill $process
    fi
    # Oddly the -w/-n checks seem to fail in the process list check.
    # So, a string length check is added.
    source /etc/profile;nohup python /root/feedpuller/puller.py > /root/latest-pull.log 2>&1&
}

restart

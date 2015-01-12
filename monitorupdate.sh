host=`hostname`
IFS='-' read -a array <<< "$host"
feed_instance="${array[1]}"
processes=`ps aux|grep "python /root/feedpuller/puller.py" | wc -l`
curl -X POST -d "feed_instance="$feed_instance"&processes="$processes $staging:8888/monitor/
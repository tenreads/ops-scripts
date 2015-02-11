function startpull() {
  ssh root@$feed_01 'source /etc/profile; /usr/bin/pullfeed && exit' &
  ssh root@$feed_02 'source /etc/profile; /usr/bin/pullfeed && exit' &
  ssh root@$feed_03 'source /etc/profile; /usr/bin/pullfeed && exit' &
  ssh root@$feed_04 'source /etc/profile; /usr/bin/pullfeed && exit' &
  ssh root@$feed_05 'source /etc/profile; /usr/bin/pullfeed && exit' &
  ssh root@$feed_06 'source /etc/profile; /usr/bin/pullfeed && exit' &
  ssh root@$feed_07 'source /etc/profile; /usr/bin/pullfeed && exit' &
  ssh root@$feed_08 'source /etc/profile; /usr/bin/pullfeed && exit' &
  ssh root@$feed_09 'source /etc/profile; /usr/bin/pullfeed && exit' &
  ssh root@$feed_10 'source /etc/profile; /usr/bin/pullfeed && exit' &
  ssh root@$feed_11 'source /etc/profile; /usr/bin/pullfeed && exit' &
  ssh root@$feed_12 'source /etc/profile; /usr/bin/pullfeed && exit' &
  ssh root@$feed_13 'source /etc/profile; /usr/bin/pullfeed && exit' &
  ssh root@$feed_14 'source /etc/profile; /usr/bin/pullfeed && exit' &
  ssh root@$feed_15 'source /etc/profile; /usr/bin/pullfeed && exit' &
  ssh root@$feed_16 'source /etc/profile; /usr/bin/pullfeed && exit' &
  wait
}

function startparse() {
  ssh root@$feed_01 'source /etc/profile; /usr/bin/parsestories && exit' &
  ssh root@$feed_02 'source /etc/profile; /usr/bin/parsestories && exit' &
  ssh root@$feed_03 'source /etc/profile; /usr/bin/parsestories && exit' &
  ssh root@$feed_04 'source /etc/profile; /usr/bin/parsestories && exit' &
  ssh root@$feed_05 'source /etc/profile; /usr/bin/parsestories && exit' &
  ssh root@$feed_06 'source /etc/profile; /usr/bin/parsestories && exit' &
  ssh root@$feed_07 'source /etc/profile; /usr/bin/parsestories && exit' &
  ssh root@$feed_08 'source /etc/profile; /usr/bin/parsestories && exit' &
  ssh root@$feed_09 'source /etc/profile; /usr/bin/parsestories && exit' &
  ssh root@$feed_10 'source /etc/profile; /usr/bin/parsestories && exit' &
  ssh root@$feed_11 'source /etc/profile; /usr/bin/parsestories && exit' &
  ssh root@$feed_12 'source /etc/profile; /usr/bin/parsestories && exit' &
  ssh root@$feed_13 'source /etc/profile; /usr/bin/parsestories && exit' &
  ssh root@$feed_14 'source /etc/profile; /usr/bin/parsestories && exit' &
  ssh root@$feed_15 'source /etc/profile; /usr/bin/parsestories && exit' &
  ssh root@$feed_16 'source /etc/profile; /usr/bin/parsestories && exit' &
  wait
}

function status() {
  ssh root@$feed_01 'echo "FEED 01"; ps aux|grep python && exit' &
  ssh root@$feed_02 'echo "FEED 02"; ps aux|grep python && exit' &
  ssh root@$feed_03 'echo "FEED 03"; ps aux|grep python && exit' &
  ssh root@$feed_04 'echo "FEED 04"; ps aux|grep python && exit' &
  ssh root@$feed_05 'echo "FEED 05"; ps aux|grep python && exit' &
  ssh root@$feed_06 'echo "FEED 06"; ps aux|grep python && exit' &
  ssh root@$feed_07 'echo "FEED 07"; ps aux|grep python && exit' &
  ssh root@$feed_08 'echo "FEED 08"; ps aux|grep python && exit' &
  ssh root@$feed_09 'echo "FEED 09"; ps aux|grep python && exit' &
  ssh root@$feed_10 'echo "FEED 10"; ps aux|grep python && exit' &
  ssh root@$feed_11 'echo "FEED 11"; ps aux|grep python && exit' &
  ssh root@$feed_12 'echo "FEED 12"; ps aux|grep python && exit' &
  ssh root@$feed_13 'echo "FEED 13"; ps aux|grep python && exit' &
  ssh root@$feed_14 'echo "FEED 14"; ps aux|grep python && exit' &
  ssh root@$feed_15 'echo "FEED 15"; ps aux|grep python && exit' &
  ssh root@$feed_16 'echo "FEED 16"; ps aux|grep python && exit' &
  wait
}

if [[ $1 == "status" ]]
then
  echo "Starting feed status request"
  status
elif [[ $1 == "parse" ]]
then
  echo "Starting parse stories request"
  startparse
elif [[ $1 == "pull" ]]
then
  echo "Starting pull feed request"
  startpull
else
  echo "Invalid operation"
fi

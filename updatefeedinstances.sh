function pull() {
    ssh root@$FEED_01 'cd "tenreads-new-feedpuller/"; bash; git pull && exit' &
    ssh root@$FEED_02 'cd "tenreads-new-feedpuller/"; bash; git pull && exit' &
    ssh root@$FEED_03 'cd "tenreads-new-feedpuller/"; bash; git pull && exit' &
    ssh root@$FEED_04 'cd "tenreads-new-feedpuller/"; bash; git pull && exit' &
    ssh root@$FEED_05 'cd "tenreads-new-feedpuller/"; bash; git pull && exit' &
    ssh root@$FEED_06 'cd "tenreads-new-feedpuller/"; bash; git pull && exit' &
    ssh root@$FEED_07 'cd "tenreads-new-feedpuller/"; bash; git pull && exit' &
    ssh root@$FEED_08 'cd "tenreads-new-feedpuller/"; bash; git pull && exit' &
    ssh root@$FEED_09 'cd "tenreads-new-feedpuller/"; bash; git pull && exit' &
    ssh root@$FEED_10 'cd "tenreads-new-feedpuller/"; bash; git pull && exit' &
    ssh root@$FEED_11 'cd "tenreads-new-feedpuller/"; bash; git pull && exit' &
    ssh root@$FEED_12 'cd "tenreads-new-feedpuller/"; bash; git pull && exit' &
    ssh root@$FEED_13 'cd "tenreads-new-feedpuller/"; bash; git pull && exit' &
    ssh root@$FEED_14 'cd "tenreads-new-feedpuller/"; bash; git pull && exit' &
    ssh root@$FEED_15 'cd "tenreads-new-feedpuller/"; bash; git pull && exit' &
    ssh root@$FEED_16 'cd "tenreads-new-feedpuller/"; bash; git pull && exit' &
    # wait
}

pull
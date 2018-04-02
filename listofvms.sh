BoxManage list vms | cut -d'"' -f2 | sed 's/^/"/;s/$/"/' | while read LINE; do echo $nmb". "$LINE; ((++nmb)); done

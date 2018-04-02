nmb=1; while read LINE; do echo $nmb". "$LINE; ((++nmb)); done < fileku | sed -n 4p

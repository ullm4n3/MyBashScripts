nmb=1

cat $1 | while read LINE
do
	echo $nmb". "$LINE
	((++nmb))
done

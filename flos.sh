nmb=1
echo "number os : "
read LST

function selectos(){
VBoxManage list vms | cut -d'"' -f2 | sed 's/^/\"/;s/$/\"/' | while read LINE; do echo $nmb". "$LINE; ((++NMB)); done\
sed -n $LST'p'; }

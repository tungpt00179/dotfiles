[ $# -eq 0 ] && [ -e /tmp/scount ] && count=$(cat /tmp/scount)
[ $# -eq 0 ] && [ -e /tmp/query  ] && query=$(cat /tmp/query)
[ $# -eq 0 ] && [ ! -e /tmp/scount ] && count=100

[ $# -ge 1 ] && count=$1

[ $# -ge 2 ] && query=$2
[ $# -ge 2 ] || query="is: starred avxhm.se"

[ $# -ge 3 ] && skip=$3
[ $# -ge 3 ] || skip=0

echo $query > /tmp/query
echo $count > /tmp/count
echo $skip > /tmp/skip

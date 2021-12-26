len=60
ht=40

area=$((len*ht))

AreaMts=$(echo $area | awk '{ printf "%f", $1 * .3048 }')

echo "Area of rect 60ftX40ft in mts is $AreaMts"

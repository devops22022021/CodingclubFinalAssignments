read -p "Enter the value to convert: " num
read -p "Enter the unit to convert in format ft2inch or ft2mtr or inch2ft mtr2ft: " unit

case $unit in
	ft2inch)
		inch=$((num*12))
		echo "$num ft is equal to: $inch in"
		;;
	ft2mtr)
		mtr=$(echo $num | awk '{printf "%f", $1 / 3.2808}')
		echo "$num ft is equal to: $mtr mts"
		;;
	inch2ft)
		inch=$(echo $num | awk '{printf "%f", $1 / 12 }' )
		echo "$num inch is equal to: $inch ft"
		;;
	mtr2ft)
		mtr=$(echo $num | awk '{printf "%f", $1 * 3.2808}')
		echo "$num mtr is equal to: $mtr ft"
		;;
	*)
		echo " Not a valid conversion format"
		;;
esac

inch=42

feet=$(echo $inch | awk '{ printf "%f", $1 / 12 }')

echo " $inch inch in feet is $feet ft"

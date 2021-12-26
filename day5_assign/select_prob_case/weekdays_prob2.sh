read -p "Enter the digit: " digit

case $digit in
        1)
        echo -n "Monday " ;;
        2)
        echo -n "Tuesday " ;;
        3)
        echo -n "Wenesday " ;;
        4)
        echo -n "Thrusday " ;;
        5)
        echo -n "friday " ;;
        6)
        echo -n "Saturday " ;;
        7)
        echo -n "Sunday " ;;
        *)
        echo -n "Not a valid number " ;;
    esac

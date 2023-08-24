battery=`termux-battery-status | grep percentage | sed "s/[^0-9]//g"`
if [ $battery -ge 80 ]; then
    echo "   $battery%"
elif [ $battery -ge 60 ]; then
    echo "   $battery%"
elif [ $battery -ge 40 ]; then
    echo "   $battery%"
elif [ $battery -ge 20 ]; then
    echo "   $battery%"
else
    echo "   $battery%"
fi

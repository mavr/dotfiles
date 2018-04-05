#!/bin/bash
batinf='acpi -b'
perc1=$(acpi -b | awk '{print $4;}' | sed 's/%//g' | sed 's/,//g' | head -1)
perc2=$(acpi -b | awk '{print $4;}' | sed 's/%//g' | sed 's/,//g' | tail -1)
perc=$(( ($perc1+$perc2)/2 ))
charging=$(acpi -b | grep -c Discharging)
if [ ! $charging -eq 1 ]
then echo " $perc%"
elif (( $perc > '75' ))
then echo " $perc%"
elif (( $perc > '50' ))
then echo " $perc%"
elif (( $perc > '25' ))
then echo " $perc%"
elif  (( $perc > '10' ))
then echo " $perc%"
else
echo " $perc%"
fi

case $BLOCK_BUTTON in
	3) mate-power-statistics ;;
esac

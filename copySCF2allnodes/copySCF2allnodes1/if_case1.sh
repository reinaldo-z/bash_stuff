#!/bin/bash
#file: if_case1.sh

a=cinco
echo a=$a

w=cuatro
echo w=$w
y=dos
echo y=$y
z=tres
echo z=$z
echo

if [ $a == $y ] || [ $a == $z ] || [ $a == $w ]; then
echo "si hay coincidencias" 
else echo "no hay coincidencias"
fi


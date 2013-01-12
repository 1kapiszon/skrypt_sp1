

#!/bin/bash


zmienna="x";
function wybor
{
case $zmienna in

w) echo "Oto lista plików w tym katalogu";
ls ;;
esac;


}

function menu # poczatek menu
{
until [ $zmienna = k ];do
echo "Wciśnij Enter aby kontynuować";
read;
clear; # czyść ekran
echo $zmienna;
echo " Menu ";
echo;
echo "d -  Dodaj dane osobowe.";
echo "w - wyświetl wszystkie pliki w tym katalogu.";
echo "k - zakończ skrypt.";
read zmienna;
wybor;
done;
}
menu;



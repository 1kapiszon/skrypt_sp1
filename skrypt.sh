

#!/bin/bash
baza='ble';
licznik=1;
zmienna="x";
imie='ble';
nazwisko='ble';
wiek='0';



if [ -d $(pwd)/baza ]
then
echo;
else
mkdir $(pwd)/baza;
fi


function menu_wybor
{
case $zmienna in
dodaj) dane;
 licznik=licznik+1;;

wyswietl) cd $(pwd)/baza;
echo "Dostepne Pliki /n ";
ls;
read;;
sortuj)echo;;
wybierz)echo;;
usun)echo;;
esac;

}



function dane
{


cd baza;

echo "Podaj imie";
read imie;
echo;
echo "Podaj nazwisko";
read nazwisko;
echo;
echo "Podaj wiek";
read wiek;
echo;

touch $licznik.txt;
echo "ID: $licznik" >> osoba$licznik.txt ;
echo "Imie: $imie" >> osoba$licznik.txt  ;
echo "Nazwisko: $nazwisko" >> osoba$licznik.txt ;
echo "Wiek: $wiek" >> osoba$licznik.txt ;

cd ..
}




function menu # poczatek menu
{
until [ $zmienna = k ];do
clear; # czyść ekran

echo " Menu ";
echo;
echo "wpisz  odpowiednia fraze a nastepnie nacisnij enter" ;
echo;
echo "dodaj - Dodaj dane osobowe.";
echo "wyswietl - wyświetl wszystkie pliki w bazie .";
echo "sortuj - sortuj wg. nazwiska";
echo "wybierz -  wybierz plik do wyswietlenia";
echo "usun - wybierz plik do usuniecia";
echo "k - zakończ skrypt.";
read zmienna;
menu_wybor;
done
}
menu;





#!/bin/bash
baza='ble';
licznik=0;
zmienna="x";
imie='ble';
nazwisko='ble';
wiek='0';
function wybor
{
case $zmienna in
d) dane;
 licznik=licznik+1;;
e)wejscie;;
w) echo "Dostepne Bazy, aby wyjs do menu- enter /n ";
ls;
read;;
esac;

}

function wejscie
{
ls;
echo;
echo "podaj nazwe bazy do której chcesz wejsc";
read baza;
cd baza;
}

function dane
{

mkdir $(pwd) baza$licznik;
cd baza$licznik;

echo "Podaj imie";
read imie;
echo;
echo "Podaj nazwisko";
read nazwisko;
echo;
echo "Podaj wiek";
read wiek;
echo;

touch osoba$licznik.txt;
echo "ID: &licznik" >> osoba$licznik.txt ;
echo "Imie: &imie" >> osoba$licznik.txt  ;
echo "Nazwisko: &nazwisko" >> osoba$licznik.txt ;
echo "Wiek: &wiek" >> osoba$licznik.txt ;

cd ..
}




function menu # poczatek menu
{
until [ $zmienna = k ];do
clear; # czyść ekran

echo " Menu ";
echo;
echo "d -  Dodaj dane osobowe.";
echo "w - wyświetl wszystkie bazy w glownym katalogu.";
echo "e aby wejsc do wybranej bazy";
echo "k - zakończ skrypt.";
read zmienna;
wybor;
done
}
menu;



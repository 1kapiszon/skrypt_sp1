

#!/bin/bash
baza='ble'; #zapelnianie byle jakimi wartosciami zmioennych na wszelki wypadek i w nioektorych ytrzeba np licznik
licznik=1;
zmienna="x";
imie='ble';
nazwisko='ble';
wiek='0';

#sprawdzanie czy jest juz utworzony folder baza jesli nie to tworzenie
 


if [ -d $(find * -type f -iname "skrypt.sh" )/kontakty ]
then
echo;
else
mkdir $(find * -type f -iname "skrypt.sh" )/kontakty;
fi

#jest to switch z case'ami wpisywanymi po przeczytaniu menu, uruchami odpowiednie funkcje albo np w wyswietl od razu w casie sa dwie komendy a w ostatniej musza byc dwa apostrofy
function menu_wybor
{
case $zmienna in
dodaj) dane;
 licznik=licznik+1;;

wyswietl) cd $(pwd)/kontakty;
echo "Dostepne Pliki /n ";
ls;
read;;
sortuj)echo;;
wybierz)echo;;
usun)echo;;
esac;

}

#funkcja pobierajaca dane do zmiennych, i wchodzaca do katalogu z baza


function dane
{


cd kontakty;

echo "Wyswietlanie:"
echo;
echo "Podaj nazwe dla kontaktu:";
read nazwa;
echo;
echo "Dane:";
echo;
echo "Podaj imie:";
read imie;
echo;
echo "Podaj nazwisko:";
read nazwisko;
echo;
echo "Podaj wiek:";
read wiek;
echo;
echo "Podaj numer telefonu:";
read numer;



touch $nazwa.txt;
echo "Imie: $imie" >> $nazwa.txt;
echo "Nazwisko: $nazwisko" >> $nazwa.txt;
echo "Wiek: $wiek" >> $nazwa.txt;
echo "Numer tel:: $wiek" >> $nazwa.txt;

cd ..
}

function wybierz
{
cd kontakty;
echo;
echo "Wpisz nazwe osoby ktorej dane chcesz wyswietlic"

ls; 



}



#menu glowne

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



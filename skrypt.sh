#!/bin/bash
zmienna="x";
nazwa='ble';
nazwa1='ble'
imie='ble';
nazwisko='ble';
wiek='0';
numer='0';


<<<<<<< HEAD
#!/bin/bash
baza='ble'; #zapelnianie byle jakimi wartosciami zmioennych na wszelki wypadek i w nioektorych ytrzeba np licznik
licznik=1;
zmienna="x";
imie='ble';
nazwisko='ble';
wiek='0';
=======
if [ -d $(pwd)/kontakty ]
then
echo;
else
mkdir $(pwd)/kontakty;
fi
>>>>>>> ble

#sprawdzanie czy jest juz utworzony folder baza jesli nie to tworzenie
 

<<<<<<< HEAD

if [ -d $(pwd)/kontakty ]
then
echo;
else
mkdir $(pwd)/kontakty;
fi

#jest to switch z case'ami wpisywanymi po przeczytaniu menu, uruchami odpowiednie funkcje albo np w wyswietl od razu w casie sa dwie komendy a w ostatniej musza byc dwa apostrofy
=======
>>>>>>> ble
function menu_wybor
{
case $zmienna in
dodaj) dane;
<<<<<<< HEAD
 licznik=licznik+1;;
=======
licznik=licznik+1;;
>>>>>>> ble

wyswietl) cd $(pwd)/kontakty;
echo "Dostepne Pliki  ";
echo;
ls;;

sortuj)echo;;
wybierz)echo;;
usun)echo;;
esac;

}

<<<<<<< HEAD
#funkcja pobierajaca dane do zmiennych, i wchodzaca do katalogu z baza


function dane
{


cd kontakty;

=======


function dane
{


cd kontakty;

>>>>>>> ble
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

<<<<<<< HEAD


=======
>>>>>>> ble
touch $nazwa.txt;
echo "Imie: $imie" >> $nazwa.txt;
echo "Nazwisko: $nazwisko" >> $nazwa.txt;
echo "Wiek: $wiek" >> $nazwa.txt;
<<<<<<< HEAD
echo "Numer tel:: $wiek" >> $nazwa.txt;
=======
>>>>>>> ble

cd ..
}

<<<<<<< HEAD
function wybierz
{
cd kontakty;
echo;
echo "Wpisz nazwe osoby ktorej dane chcesz wyswietlic"
echo;
ls; 
echo;
read co;
cat $co.txt
echo;
 
}



#menu glowne

=======



>>>>>>> ble
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

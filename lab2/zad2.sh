#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 2 – semestr letni 2020/2021
#
# Celem zajęć jest nabranie doświadczenia w podstawowej pracy z powłoką Bash,
# w szczególności w nawigowaniu po drzewie katalogów i sprawdzaniu uprawnień.
#
# Przygotowane rozwiązania nie muszą być całkowicie uniwersalne. Zakładamy,
# że ogólna struktura katalogów się nie zmienia (nie będzie już więcej/mniej
# poziomów podkatalogów), jednakże same nazwy i zawartości plików (o ile
# nie są podane wprost w treści zadań) mogą być dowolne i ulegać zmianie,
# a przygotowane rozwiązania nadal powinny działać.
#
# Wszystkie chwyty dozwolone, ale ostatecznie w wyniku ma powstać tylko to,
# o czym mowa w treści zadania – tworzone samodzielnie ewentualne tymczasowe
# pliki pomocnicze należy usunąć.
#

#
# Zadanie 2.
# Zweryfikować istnienie i zawartość pliku `drugi` z katalogu `ddd`.
# Plik powinien zawierać napis `Ala ma kota.`. Jeśli czegoś brakuje
# to odpowiedni plik stworzyć lub nadpisać istniejący.
#

#Zmienne pomocnicze
wanted_dir='./ddd'
desired_filename='drugi'
whole_dir="${wanted_dir}/${desired_filename}"
# Stosujemy prostsze podejscie, tak by urozmaicic sobie basha, patrzymy czy 
# plik istnieje po prostu podajac jego cale directory
if [ ! -f "${whole_dir}" ]; 
then
    echo 'File doesnt exists. Creating one';
    touch "${whole_dir}" && echo "Ala ma kota" > "${whole_dir}"  ;
fi
# Wykorzystuje cata by sprawdzic czy w ogole w pliku znajduje sie 
# interesujace mnie wystapienie
if [[ $(cat "${whole_dir}" )  != *"Ala ma kota"* ]]; 
then 
    echo "Adding to file required string";
    echo "Ala ma kota" > "${whole_dir}"  ;
fi



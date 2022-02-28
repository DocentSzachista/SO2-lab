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
# Zadanie 1.
# Sprawdzić, czy w katalogu `ddd` istnieje plik o nazwie `pierwszy`,
# a jeśli nie, to go utworzyć. Zawartość pliku nie ma znaczenia.
#
wanted_dir='./ddd'
desired_filename='pierwszy'
list_ls=$(ls $wanted_dir)

# otoczenie zmiennej gwiazdkami * * traktuje jako szukanie wystepowania konkretnego podciagu znakow 
# drugi zestaw klamerek, po to by zaakceptowalo tego "globa"
if [[ "$list_ls" == *"$desired_filename"* ]]; then
    echo 'file exists'
    echo "${list_ls}";
else
    touch "${wanted_dir}/${desired_filename}";
fi 

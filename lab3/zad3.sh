#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 3 – semestr letni 2020/2021
#
# Celem zajęć jest pogłębienie wiedzy na temat struktury systemu plików,
# poruszania się po katalogach i kontroli uprawnień w skryptach powłoki.
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
# Zadanie 3.
# Utworzyć w katalogu `ddd` dowiązania do wszystkich plików wykonywalnych
# z katalogu `aaa`. Nazwy tworzonych dowiązań mają pokrywać się z nazwami
# oryginalnych plików. Rodzaj dowiązania nie ma znaczenia, ale należy
# upewnić się, że nie zmienimy żadnych istniejących plików w `ddd`.
#
# 
target_dir='ddd/'
exec_dir='aaa/'
exec_files=$(find "$exec_dir" -executable -type f -printf '%f\n')
for file in $exec_files
do
    if ! test -f "${target_dir}${file}" ; then
        ln "${exec_dir}${file}" "${target_dir}${file}"; 
    fi;
done

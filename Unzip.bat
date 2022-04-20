@echo off
Echo **This will unzip all .bat files whilst keeping their underlying file structure, it ignores non .zip files**
Echo **It will auto rename the extracted file if there is a duplicate (for example, name.txt will be renamed to name_1.txt).**

::Confirm Y/N
:choice
set /P c=Are you sure you want to continue [Y/N]?
if /I "%c%" EQU "Y" goto :extract
if /I "%c%" EQU "N" goto :exit

::Extract if Y
:extract
cd C:\Program Files\7-Zip
7z x "F:\Zips\*.zip" -o"F:\Zips\Unzip" -aou
Echo **Extract Completed**
pause

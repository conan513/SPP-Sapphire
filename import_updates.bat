@echo off
set mainfolder=%CD%
set database=sapphire

echo Importing database updates...
ping -n 10 127.0.0.1>nul
for %%i in ("%mainfolder%\sql\updates\*sql") do if %%i neq "%mainfolder%\sql\updates\*sql" if %%i neq "%mainfolder%\sql\updates\*sql" if %%i neq "%mainfolder%\sql\updates\*sql" echo %%i & "%mainfolder%\Database\bin\mysql.exe" --defaults-extra-file="%mainfolder%\Database\connection.cnf" --default-character-set=utf8 -f --local-infile %database% --database=%database% < %%i
exit
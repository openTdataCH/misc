REM  Loading "actual data" from opentransportdata.swiss into a postgres database - done for windows
REM  Grégoire Blanc, 2016REM 
REM More information: 
REM - https://opentransportdata.swiss/de/dataset/istdaten
REM - https://opentransportdata.swiss/de/cookbook/ist-daten/
REM 
REM Put this script into the same directoy as your csv files.
REM "%%~dpnxF" is for Drive, Path, baseName and eXtension of the current file
REM Parameters:
REM  - replace <username> and <dbpassword> with your username and password
REM  - replace <databasename> with db name
REM  - replace <schema> and <tablename> with your schema and tablename
REM  - replace <localhost> with localhost if you work in local, or your servername. If you want to do a remote import, you need to put a \ before COPY.REMREMREM  example: for %%f in (*.csv) do psql -d postgres -h localhost -U postgres -p 5432 -c "COPY delay.ist_daten FROM '%%~dpnxf'  WITH DELIMITER ';' CSV HEADER;"

@echo off

setlocal

set PGPASSWORD=<dbpassword>


for %%f in (*.csv)  do psql -d <databasename> -h <localhost> -U <username> -p 5432 -c "COPY <schema>.<tablename> FROM '%%~dpnxf'  WITH DELIMITER ';' CSV HEADER;"

pause

endlocal

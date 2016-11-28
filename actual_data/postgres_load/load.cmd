REM  Loading "actual data" from opentransportdata.swiss into a postgres database 
REM  Grégoire Blanc, 2016
REM 
REM More information: 
REM - https://opentransportdata.swiss/de/dataset/istdaten
REM - https://opentransportdata.swiss/de/cookbook/ist-daten/

@echo off

setlocal

set PGPASSWORD=xxxxx

for %%f in (*.csv)  do psql -d IstDaten -h localhost -U postgres -p
5432 -c "COPY public.ist_daten FROM '%%~dpnxf'  WITH DELIMITER ';'
CSV HEADER;"

pause

endlocal


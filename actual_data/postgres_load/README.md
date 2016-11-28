# H1 IST-Files laden nach Postgres

Jeden Tag werden auf [https://opentransportdata.swiss/de/dataset/istdaten/permalink](https://opentransportdata.swiss/de/dataset/istdaten/permalink)
die Ist-Daten des öffentlichen Verkehr bereit gestellt. Mittels der Skripte
können die Daten in eine Postgres Datenbank importiert werden. Das Skript geht
davon aus, dass mehrere Datasets bereits lokal verfügbar sind und lädt alle
Files aufs mal in die Datenbank.

Christian Trachsel, 2016

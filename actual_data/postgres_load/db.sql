/*Data creation from ODPCH öV Schweiz Actual Data files
Grégoire Blanc, 2016
Relevant data set: https://opentransportdata.swiss/dataset/istdaten 
More information: https://opentransportdata.swiss/cookbook/ist-daten/
*/
SET client_encoding = 'UTF8';
DROP SCHEMA  delay  CASCADE;
CREATE SCHEMA delay;
SET search_path = delay;
CREATE TABLE IST_DATEN(
  BETRIEBSTAG         DATE,
  FAHRT_BEZEICHNER    VARCHAR(50),
  BETREIBER_ID        VARCHAR(20),
  BETREIBER_ABK       VARCHAR(10),
  BETREIBER_NAME      VARCHAR(100),
  PRODUKT_ID          VARCHAR(10),
  LINIEN_ID           VARCHAR(15),
  LINIEN_TEXT         VARCHAR(10),
  UMLAUF_ID           VARCHAR(15),
  VERKEHRSMITTEL_TEXT VARCHAR(10),
  ZUSATZFAHRT_TF      BOOLEAN,
  FAELLT_AUS_TF       BOOLEAN,
  BPUIC               INT,
  HALTESTELLEN_NAME   VARCHAR(50),
  ANKUNFTSZEIT        TIMESTAMP,
  AN_PROGNOSE         TIMESTAMP,
  AN_PROGNOSE_STATUS  VARCHAR(12),
  ABFAHRTSZEIT        TIMESTAMP,
  AB_PROGNOSE         TIMESTAMP,
  AB_PROGNOSE_STATUS  VARCHAR(12),
  DURCHFAHRT_TF       BOOLEAN
);

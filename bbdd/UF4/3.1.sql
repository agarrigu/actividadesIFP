-- Crear tablespace
CREATE TABLESPACE VEHICULOS
DATAFILE '~/repos/bbdd/UF4/VEHICULOS.dbf'
SIZE 30M EXTENT MANAGAMENT LOCAL SEGMENT SPACE MANAGAMENT AUTO;

alter session set "_ORACLE_SCRIPT"=true;

-- Crear usuario
CREATE USER CONDUCTORfulanito IDENTIFIED BY 12345 DEFAULT TABLESPACE VEHICULOS TEMPORARY TABLESPACE TEMP QUOTA UNLIMITED ON VEHICULOS;

-- Dar privilegios
GRANT DBA TO VEHICULOS;
-- Crear warehouse para operaciones de ML
CREATE OR REPLACE WAREHOUSE TITANIC_ML_WH
    WITH WAREHOUSE_SIZE = 'XSMALL'
    AUTO_SUSPEND = 60
    AUTO_RESUME = TRUE;

-- Crear database para nuestro proyecto
CREATE OR REPLACE DATABASE TITANIC_ML_DB;

-- Crear esquema para nuestros objetos
CREATE OR REPLACE SCHEMA TITANIC_ML_SCHEMA;

-- Crear stage interno para almacenar el archivo CSV del Titanic
CREATE OR REPLACE STAGE TITANIC_ASSETS;

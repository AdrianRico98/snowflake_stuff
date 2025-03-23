CREATE DATABASE IF NOT EXISTS ocr_curriculum;
CREATE SCHEMA IF NOT EXISTS ocr_curriculum.curriculum_schema;
CREATE STAGE IF NOT EXISTS curriculum_schema.cvs_to_ocr
  ENCRYPTION = (TYPE = 'SNOWFLAKE_SSE')
  DIRECTORY = (ENABLE = true);
-- Tras cargar en el stage (manualmente) las imagenes, podemos listarlas
ls @cvs_to_ocr;
-- Para poder utilizar funciones cortex
ALTER ACCOUNT SET CORTEX_ENABLED_CROSS_REGION = 'ANY_REGION';

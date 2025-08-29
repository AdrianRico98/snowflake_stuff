--Configuración de la sincronización entre snowflake y el repositorio
CREATE DATABASE PRUEBAS_ADRIAN;
USE DATABASE PRUEBAS_ADRIAN; -- tienes que crear el repo contra una database
CREATE OR REPLACE SECRET my_git_secret
  TYPE = password
  USERNAME = 'AdrianRico98'
  PASSWORD = 'secreto'; -- mete aqui tu secret/token de developer settings

CREATE OR REPLACE API INTEGRATION my_git_api_integration
  API_PROVIDER = git_https_api
  API_ALLOWED_PREFIXES = ('https://github.com/AdrianRico98/') -- le das acceso al conjunto de repos de la cuenta, luego al crear el repo de snow, se creará contra uno específico de git
  ALLOWED_AUTHENTICATION_SECRETS = (my_git_secret)
  ENABLED = TRUE;

USE DATABASE PRUEBAS_ADRIAN;
USE SCHEMA PUBLIC; -- o crea un schema específico si prefieres

CREATE OR REPLACE GIT REPOSITORY streamlit_demo
  API_INTEGRATION = my_git_api_integration
  GIT_CREDENTIALS = my_git_secret
  ORIGIN = 'https://github.com/AdrianRico98/snowflake_stuff.git';

-- crea el main.py en tu repo, la app (si lo creas en este paso, haz un fetch aqui, porque si no no te va a salir)

CREATE OR REPLACE WAREHOUSE STREAMLIT_WH -- warehouse dedicado para streamlit, ya os comenté que era buena práctica
  WAREHOUSE_SIZE = 'XSMALL' 
  AUTO_SUSPEND = 60;
  
-- Sincronizar los archivos del repo. Lo suyo es que tengas una github actions que cuando hagas un merge entre ramas a la main ejecute este comando.
ALTER GIT REPOSITORY streamlit_demo FETCH;

-- Crear el streamlit app
CREATE OR REPLACE STREAMLIT streamlit_demo_app
  ROOT_LOCATION = '@PRUEBAS_ADRIAN.PUBLIC.streamlit_demo/branches/main'
  MAIN_FILE = 'main_streamlit_demo_integration.py'
  QUERY_WAREHOUSE = STREAMLIT_WH;
  

  

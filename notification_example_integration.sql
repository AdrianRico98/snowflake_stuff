--se crea la notification integration
CREATE NOTIFICATION INTEGRATION notif_errores_email
  TYPE=EMAIL
  ENABLED=TRUE
  DEFAULT_RECIPIENTS=('adrian.rico.analytics@gmail.com') -- email del único receptor 
  DEFAULT_SUBJECT='Error en Snowflake - Atención Requerida';

--prueba de la integracion
CALL SYSTEM$SEND_EMAIL(
     'notif_errores_email',
     'adrian.rico.analytics@gmail.com',
     'Prueba desde Snowflake',
     'Este es un mensaje de prueba.\nSi lo recibes, la integración funciona correctamente.\nFecha: ' || CURRENT_TIMESTAMP()
 );

--insertamos la integracion en el exception de un procedure de "procesamiento"
CREATE OR REPLACE PROCEDURE test_email_simple()
RETURNS STRING
LANGUAGE PYTHON
RUNTIME_VERSION = '3.9'
PACKAGES = ('snowflake-snowpark-python')
HANDLER = 'test_simple'
AS
$$
def test_simple(session):
    try:
        session.sql("SELECT * FROM tabla_inexistente").collect()
        return "OK"
    except:
        session.sql("""
            CALL SYSTEM$SEND_EMAIL(
                'notif_errores_email',
                'adrian.rico.analytics@gmail.com',
                'Error Simple',
                'Hubo un error en el procedure test_email_simple'
            )
        """).collect()
        
        raise Exception("Error capturado y email enviado")
$$;

CALL test_email_simple();

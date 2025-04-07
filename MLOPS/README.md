# Predicción de supervivencia en el Titanic con Snowflake ML

Este repositorio contiene un proyecto completo de Machine Learning implementado en Snowflake, utilizando el conjunto de datos clásico del Titanic. El proyecto demuestra un flujo de trabajo MLOps de principio a fin dentro del ecosistema de Snowflake.

## Contenido del repositorio

- **Notebook_mlops.ipynb**: Notebook principal con el análisis exploratorio, preprocesamiento, modelado, inferencia y evaluación.
- **setup.sql**: Script SQL para configurar el entorno Snowflake (warehouse, database, schema, stage).
- **requirements.txt**: Dependencias necesarias para ejecutar el notebook.

## Requisitos previos

- Cuenta en Snowflake con permisos de administrador para crear warehouses, databases y schemas.
- Python 3.8+ con Jupyter Notebook o JupyterLab.
- Credenciales de Snowflake configuradas.

## Configuración

1. Ejecuta el script `setup.sql` en tu consola de SQL de Snowflake para crear las estructuras necesarias.
2. Instala las dependencias: `pip install -r requirements.txt`
3. Abre el notebook y conecta con tu cuenta de Snowflake.

## Flujo de trabajo

El proyecto sigue estos pasos:

1. **Configuración del entorno**: Conexión a Snowflake y configuración de recursos.
2. **Carga de datos**: Importación del dataset del Titanic a una tabla en Snowflake.
3. **Preprocesamiento**: Manejo de valores faltantes, codificación y escalado de variables usando Snowpark ML.
4. **Análisis exploratorio**: Visualización de patrones y relaciones en los datos.
5. **Modelado**: Entrenamiento de modelos XGBoost para predecir supervivencia.
6. **Optimización**: Búsqueda de hiperparámetros con GridSearchCV.
7. **Evaluación**: Comparación de modelos usando métricas de clasificación.
8. **Registro**: Almacenamiento de modelos en el Snowflake Model Registry.
9. **Inferencia**: Uso del modelo para predecir nuevos casos.

*Nota: Este proyecto es una demostración de capacidades MLOps en Snowflake y puede adaptarse para casos de uso empresariales más complejos.*

# Snowflake Projects Repository

Tengo varios años de experiencia profesional con Snowflake en entornos empresariales. Este repositorio contiene mini proyectos personales que uso para explorar nuevas funcionalidades de la plataforma y demostrar mis capacidades técnicas.

## Proyectos

### MLOps Completo con Snowflake ML
**Directorio:** `MLOPS/`

Implementación end-to-end de machine learning usando únicamente el ecosistema Snowflake. Desde preprocesamiento con transformadores nativos hasta deployment de modelos en producción.

- Pipeline completa con SimpleImputer, OrdinalEncoder, OneHotEncoder, StandardScaler
- Optimización de hiperparámetros con GridSearchCV distribuido
- Model Registry para versionado y métricas
- Explicabilidad con SHAP nativo
- Escalado dinámico de warehouse para operaciones intensivas

### OCR + RAG para Análisis de CVs
**Directorio:** `OCR_RAG_CVS/`

Sistema de consulta conversacional sobre currículums usando arquitectura RAG con capacidades OCR integradas en Snowflake.

- Extracción de texto con Tesserocr via User Defined Table Functions
- Vectorización con embeddings nativos (snowflake-arctic-embed-m)
- Búsqueda semántica por similitud coseno
- Generación de respuestas con Cortex Complete (Mistral-7b)
- Interfaz Streamlit para consultas en lenguaje natural

### Integración GitHub + Streamlit
**Directorio:** `STREAMLIT_INTEGRATION/`

Demostración de CI/CD nativo entre GitHub y Snowflake para aplicaciones web.

- Git Repository con sincronización automática
- API Integration con autenticación segura
- Deploy directo desde repositorio a Snowflake
- Warehouse dedicado para aplicaciones Streamlit

### Procedimientos ETL Asíncronos
**Archivo:** `new_async_procedures.sql`

Comparativa entre procesamiento ETL secuencial vs asíncrono usando el dataset TPCH_SF100.

- Implementación de ASYNC/AWAIT para paralelización
- Gestión de dependencias entre tareas
- Optimización de tiempos de ejecución
- Métricas de rendimiento comparativas

## Tecnologías Utilizadas

- **Core Snowflake:** Snowpark Python, Snowflake ML, Cortex Functions, Model Registry
- **Procesamiento:** XGBoost, scikit-learn compatibility, pipeline serialization
- **OCR/NLP:** Tesserocr, UDTF, vector search, LLM integration
- **Visualización:** Matplotlib, Seaborn, SHAP, Streamlit
- **DevOps:** Git integration, automated deployment, resource scaling

## Casos de Uso Demostrados

- **Data Science teams:** Reducción de stack tecnológico manteniendo capacidades ML completas
- **HR departments:** Procesamiento masivo y búsqueda inteligente de candidatos
- **Engineering teams:** Simplificación de CI/CD con infrastructure managed
- **Analytics teams:** Optimización de pipelines ETL con paralelización nativa

Cada proyecto incluye documentación específica y es completamente reproducible con una cuenta Snowflake estándar.

---

**Stack principal:** Snowflake • Python • SQL • Streamlit • FastAPI
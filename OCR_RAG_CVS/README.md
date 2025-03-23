# 📑 Analizador Inteligente de Currículums

Este proyecto implementa un sistema para analizar currículums (CVs) utilizando tecnología OCR y modelos de lenguaje, todo integrado en Snowflake.

## 🚀 ¿Qué hace?

- Extrae texto de imágenes de CVs mediante OCR.
- Permite hacer preguntas en lenguaje natural sobre los candidatos.
- Devuelve respuestas precisas basadas en el contenido de los currículums.
- Muestra el análisis estructurado de cada CV (perfil, experiencia, habilidades y formación).
- Indica la relevancia de cada documento para la consulta.

## 🛠️ Tecnologías

- **OCR**: Tesserocr para convertir imágenes a texto.
- **Vectorización**: Embeddings de Snowflake (snowflake-arctic-embed-m).
- **RAG**: Arquitectura de recuperación y generación aumentada.
- **LLM**: Mistral-7b para generar respuestas.
- **Frontend**: Streamlit para la interfaz de usuario.

## 📋 Cómo funciona

1. **Procesamiento inicial**: Convierte imágenes de CVs a texto mediante OCR.
2. **Vectorización**: Divide el texto en chunks y genera embeddings.
3. **Búsqueda por similitud**: Encuentra las partes más relevantes de los CVs según la consulta.
4. **Generación de respuestas**: Utiliza la información recuperada para crear respuestas precisas.
5. **Análisis de documentos**: Proporciona un resumen estructurado de cada CV.



## 🔮 Próximos pasos

- Mejoras de rendimiento y escalabilidad.
- Procesamiento multilingüe.
- Análisis más detallado de CVs.
- Mejora de la seguridad para datos sensibles.




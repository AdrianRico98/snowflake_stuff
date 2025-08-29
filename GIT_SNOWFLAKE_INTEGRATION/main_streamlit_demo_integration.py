import streamlit as st
import pandas as pd

st.title("Demo Streamlit en Snowflake 🚀")

st.write("¡Hola desde Snowflake!")
st.write("Este es un cambio en la aplicación")

# Datos de ejemplo
data = {
    'Columna1': [1, 2, 3, 4, 5],
    'Columna2': ['A', 'B', 'C', 'D', 'E']
}

df = pd.DataFrame(data)
st.dataframe(df)

st.success("Tu app está funcionando correctamente!")

# Imagen base  mr
FROM python:3.11-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar archivos necesarios
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Exponer el puerto 5000
EXPOSE 5000

# Comando de arranque
CMD ["python", "app.py"]

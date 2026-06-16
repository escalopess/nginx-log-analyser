# Nginx Log Analyser 📊

Un script ligero de Bash diseñado para analizar archivos de registro (logs) de Nginx y extraer estadísticas clave de forma rápida directamente desde la terminal.

https://roadmap.sh/projects/nginx-log-analyser

## 🚀 Descripción del Proyecto

Esta herramienta procesa un archivo de log estándar de Nginx (`nginx-access.log.txt`) para proporcionar un resumen rápido del tráfico del servidor. Genera los siguientes informes:

* **Top 5 Direcciones IP:** Identifica los clientes que realizan más peticiones.
* **Top 5 Rutas (Paths):** Muestra los recursos o endpoints más solicitados del servidor.
* **Top 5 Códigos de Estado:** Resume las respuestas del servidor (ej. 200 OK, 404 Not Found).
* **Top 5 User Agents:** Enumera los navegadores o bots más utilizados por los clientes.

## 🛠️ Herramientas Utilizadas

Este script hace uso de utilidades estándar de sistemas Unix/Linux para procesar texto de manera eficiente:
* `awk`: Para la extracción de columnas específicas y manejo de delimitadores.
* `sort`: Para la agrupación y ordenación de datos.
* `uniq`: Para la contabilización de frecuencias.
* `head`: Para limitar la salida a los resultados principales.

## ⚙️ Cómo ejecutarlo

1. Clona este repositorio en tu máquina local:
   ```bash
   git clone  https://github.com/escalopess/nginx-log-analyser

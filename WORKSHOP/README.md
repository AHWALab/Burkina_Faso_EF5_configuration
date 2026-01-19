# **Taller de Modelación Hidrológica de Inundaciones Repentinas con EF5 en Cuba organizado por el AWHA Lab de la Universidad de Iowa.**

**Descripción general:**

El contenido es una recopilación completa de diapositivas de las sesiones, grabaciones de video, instrucciones de instalación y archivos de configuración necesarios para que los participantes aprendan a construir y ejecutar un modelo de inundaciones repentinas para Cuba utilizando el modelo hidrológico distribuido EF5. El taller fue impartido por Vanessa Robledo, estudiante de doctorado, y otros investigadores del AWHA Lab en noviembre de 2025.

**Contenido Principal de la Carpeta:**

La carpeta está organizada en subcarpetas principales que reflejan la estructura del taller:

- **SLIDES:** Contiene las presentaciones (PDFs) utilizadas en las cuatro sesiones del taller (Sesion1 a Sesion4).

- **GRABACIONES:**	Se encuentran almacenadas en el siguiente link: https://drive.google.com/drive/folders/1X4km17K-c5LOxWguX23mXziSvGRA6REq 

- **MATERIALES:** Incluye los archivos y scripts de apoyo utilizados en las sesiones, como archivos de configuración (control.txt), un archivo shapefile de Cuba (cuba_shapefile.zip), y un script de Python/Colab para la creación de archivos topográficos (1_GettingBasicFile.ipynb).

- **INSTRUCCIONES:**	Proporciona guías detalladas para la instalación de las herramientas necesarias, como Docker y QGIS, y la versión dockerizada de EF5.

**Tópicos Cubiertos en el Taller**

El taller se estructura en una serie de sesiones que cubren el ciclo completo de la modelación con EF5.

- **Introducción y Conceptos Básicos (Sesiones 1 y 2):**
Sesion1.IntroEF5.pdf introduce qué es EF5, el equipo detrás del proyecto, y los conceptos generales de la modelación hidrológica distribuida.
Sesion2.ControlFile.pdf se centra en la instalación de EF5 usando Docker y la introducción al archivo de configuración (control file). El archivo Instrucciones para instalar EF5.pdf complementa este tema.

- **Construcción del Primer Modelo (Sesión 3):**
Sesion3.ModeloAgregado.pdf describe el proceso de construcción del primer modelo para Cuba usando parámetros agregados. Instruye sobre cómo crear los archivos de información topográfica (DEM, FAC, FDIR) y modificar el control file para la simulación.
Los archivos control_sesion3_completo.txt y control_sesion3_vacio.txt son ejemplos del archivo de configuración, y 1_GettingBasicFile.ipynb es un script de Python para obtener y configurar archivos básicos de Hydrosheds.

- **Modelación con Parámetros Distribuidos (Sesión 4):**
Sesion4.ModeloDistribuido.pdf avanza hacia la construcción de un modelo con parámetros distribuidos, resaltando la ventaja de representar la variabilidad espacial de las propiedades del terreno (suelo, área impermeable, etc.).
Los archivos control_agregado.txt y control_distribuido.txt son ejemplos de archivos de configuración para ambos tipos de modelos de la Sesión 4.


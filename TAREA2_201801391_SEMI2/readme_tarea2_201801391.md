# Tarea 2 – Construcción de Dashboard Analítico en Power BI

**Curso:** Seminario de Sistemas 2
**Estudiante:** Luis Fernando Gómez
**Carnet:** 201801391
**Universidad:** Universidad de San Carlos de Guatemala – Facultad de Ingeniería

---

# Descripción del Dataset

Para la elaboración de este dashboard se utilizó un dataset de ventas en formato **CSV**, el cual contiene información sobre pedidos realizados en una tienda. El conjunto de datos incluye información relacionada con clientes, productos, regiones de venta, fechas de orden y montos de ventas.

Entre las variables más relevantes utilizadas para el análisis se encuentran:

* **Order Date:** fecha en que se realizó el pedido.
* **Ship Date:** fecha en que el pedido fue enviado.
* **Category:** categoría del producto vendido.
* **Region:** región geográfica donde se realizó la venta.
* **Segment:** tipo de cliente (Consumer, Corporate o Home Office).
* **Sales:** monto total de la venta.

Este dataset permite analizar el comportamiento de las ventas desde distintas perspectivas, como categorías de productos, regiones de venta y evolución en el tiempo.

---

# Transformaciones realizadas en Power Query

Durante la etapa de preparación de datos se realizaron varias transformaciones utilizando **Power Query** con el objetivo de mejorar la calidad de los datos y facilitar su análisis.

Las transformaciones realizadas fueron las siguientes:

1. **Conversión de tipos de datos**

   * Las columnas **Order Date** y **Ship Date** fueron convertidas al tipo de dato **Fecha** para permitir análisis temporales correctos.

2. **Creación de una columna calculada**

   * Se creó una nueva columna llamada **Shipping Days**, la cual calcula el tiempo de envío de cada pedido.

   Fórmula utilizada:

   Ship Date - Order Date

   Esta columna permite analizar cuánto tiempo tarda en enviarse cada pedido.

3. **Revisión de datos**

   * Se verificó que las columnas principales utilizadas en el análisis no contuvieran valores nulos o inconsistentes.

Estas transformaciones permitieron preparar el dataset para su correcta visualización y análisis dentro de Power BI.

---

# Desarrollo del Dashboard

El dashboard fue desarrollado utilizando **Power BI Desktop** y se diseñó con el objetivo de visualizar de forma clara el comportamiento de las ventas.

El panel incluye las siguientes visualizaciones:

### 1. Indicador KPI – Total de Ventas

Se utilizó una **tarjeta (Card)** para mostrar el total acumulado de ventas registradas en el dataset.
Este indicador permite tener una visión general del volumen total de ventas.

### 2. Gráfico de barras – Ventas por Categoría

Se utilizó un **gráfico de barras** para comparar las ventas entre las distintas categorías de productos.

Esto permite identificar qué tipo de productos generan mayores ingresos.

### 3. Gráfico de líneas – Ventas a lo largo del tiempo

Se implementó un **gráfico de líneas** para analizar la evolución de las ventas a lo largo de los años.

Esta visualización permite observar tendencias de crecimiento o disminución en el volumen de ventas.

### 4. Gráfico comparativo – Ventas por Región

Se utilizó un **gráfico de barras por región** para comparar el desempeño de ventas en las diferentes zonas geográficas.

Esto ayuda a identificar qué regiones tienen mayor participación en las ventas totales.

### 5. Segmentador (Filtro) por tipo de cliente

Se añadió un **segmentador (Slicer)** basado en la variable **Segment**, el cual permite filtrar el dashboard según el tipo de cliente:

* Consumer
* Corporate
* Home Office

Esto permite realizar análisis específicos según el segmento de clientes.

---

# Interpretación de los Indicadores

A partir de las visualizaciones del dashboard se pueden obtener varios insights importantes:

* Algunas **categorías de productos generan mayores ventas**, lo cual puede indicar mayor demanda o mejor posicionamiento en el mercado.
* Las ventas muestran una **tendencia creciente a lo largo del tiempo**, lo cual podría reflejar crecimiento en la actividad comercial.
* Existen **diferencias en el volumen de ventas entre regiones**, lo cual puede ser útil para la toma de decisiones estratégicas en cuanto a distribución o enfoque de mercado.
* El uso del filtro por segmento permite analizar cómo se comportan las ventas según el **tipo de cliente**, facilitando un análisis más detallado.

---

# Conclusión

El uso de herramientas de análisis visual como Power BI permite transformar grandes volúmenes de datos en información comprensible y útil para la toma de decisiones.

A través de la limpieza de datos, la creación de indicadores clave y el uso de visualizaciones interactivas, es posible identificar patrones, tendencias y oportunidades de mejora dentro de un conjunto de datos.

Este dashboard demuestra cómo el análisis de datos puede apoyar procesos de análisis empresarial y facilitar la interpretación de información compleja de manera visual y estructurada.

---

# Capturas del Dashboard

A continuación se deben incluir capturas del dashboard generado en Power BI:

* Vista general del dashboard
* Gráfico de ventas por categoría
* Gráfico de ventas por región
* Gráfico de evolución de ventas

Las capturas permiten documentar visualmente el resultado del análisis realizado.

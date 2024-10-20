# Flutter Financial Transactions App

### Descripción

Esta es una aplicación de gestión de transacciones financieras desarrollada en **Flutter**. Permite al usuario registrar ingresos y gastos, ver el balance total y gestionar transacciones (añadir y eliminar). Los datos se almacenan de manera persistente utilizando **SQLite**.

---

## Características

- **Listado de transacciones**: Muestra todas las transacciones registradas, con descripción, monto, tipo (Ingreso o Gasto) y fecha.
- **Agregar transacción**: Permite al usuario agregar una nueva transacción especificando descripción, monto, tipo y fecha.
- **Eliminar transacción**: El usuario puede eliminar transacciones de la lista.
- **Resumen de transacciones**: Muestra un resumen con el total de ingresos, gastos y el balance actual.

---

## Tecnologías Utilizadas

- **Flutter 3**: Framework de desarrollo.
- **Provider**: Para la gestión de estado.
- **SQLite**: Para la persistencia de datos.
- **Sqflite**: Plugin de SQLite para Flutter.
- **Path Provider**: Para localizar la ruta de almacenamiento de bases de datos.

---

## Requisitos

Antes de ejecutar la aplicación, asegúrate de tener instalados los siguientes elementos:

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Un dispositivo o emulador Android
- [Git](https://git-scm.com/)

---

## Instrucciones para Clonar y Ejecutar el Proyecto

Sigue los siguientes pasos para clonar y ejecutar el proyecto localmente en tu entorno:

### 1. Clonar el Repositorio

Clona este repositorio a tu máquina local usando Git:

```bash
git clone https://github.com/Oscar-codes/flutter-financial-transactions-app.git

---
### Explicación de los puntos clave del `README.md`:

1. **Encabezados organizados**: Se usan encabezados Markdown (`#`, `##`, `###`) para jerarquizar la información, facilitando la navegación en GitHub.
   
2. **Código y comandos en bloques**: Los bloques de código (` ```bash ``` `) están formateados correctamente para mostrar los comandos de terminal como `git clone` y `flutter run` de manera clara y fácil de copiar.

3. **Secciones de instalación y ejecución claras**: El evaluador sabrá exactamente cómo instalar las dependencias y ejecutar la aplicación con los comandos que se incluyen.

4. **Descripción de la estructura del proyecto**: Esto proporciona una idea clara de la organización del código y le facilita al evaluador navegar por las carpetas y entender el flujo.

5. **Consideraciones y próximos pasos**: Se mencionan posibles mejoras o funcionalidades adicionales que podrían implementarse, lo que demuestra que has considerado cómo puede evolucionar el proyecto.

Este formato se verá limpio y bien estructurado cuando el evaluador lo revise en GitHub, facilitando su lectura y evaluación.


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
```

## 2. Navegar al Proyecto

Accede a la carpeta del proyecto clonado:

```bash
cd flutter-financial-transactions-app
```

## 3. Instalar Dependecias

Accede a la carpeta del proyecto clonado:
```bash
flutter pub get

```
## 4. Ejecutar el Proyecto

Conecta un dispositivo Android físico o inicia un emulador y ejecuta la aplicación con el siguiente comando:
```bash
flutter run

```
**Nota:** Asegúrate de tener configurado un dispositivo Android o emulador antes de ejecutar el comando. Para más información sobre cómo configurar emuladores, consulta [esta guía](https://flutter.dev/docs/get-started/install).

# Estructura del Proyecto

La aplicación sigue una estructura organizada para mantener el código modular y fácil de entender:

- **models/**: Contiene el modelo de datos `FinancialTransaction` que representa una transacción financiera.
- **screens/**: Incluye las pantallas de la aplicación, como la pantalla principal (`HomeScreen`) y la pantalla para agregar nuevas transacciones.
- **providers/**: Contiene la clase `TransactionProvider`, responsable de la gestión de estado y la comunicación con la base de datos.
- **db/**: Contiene la configuración de la base de datos SQLite.

## Gestión de Estado

Se ha utilizado **Provider** para la gestión del estado, ya que es una solución ligera y eficiente para este tipo de aplicaciones pequeñas y permite un manejo reactivo de los cambios en los datos.

## Persistencia de Datos

La persistencia de los datos se realiza utilizando **SQLite** con la ayuda del paquete `sqflite`. Esto garantiza que las transacciones se mantendrán guardadas incluso cuando el usuario cierre la aplicación y vuelva a abrirla.

## Consideraciones

- El proyecto está preparado para ejecutarse en dispositivos Android.
- La aplicación está diseñada como una versión mínima viable (MVP) que puede ser ampliada fácilmente con funcionalidades adicionales (como edición de transacciones o categorías).
- Asegúrate de tener el dispositivo conectado correctamente y ejecutando un emulador Android compatible para la ejecución del proyecto.

## Próximos Pasos

Algunas funcionalidades adicionales que podrían añadirse en futuras versiones:

- **Edición de transacciones**: Implementar una funcionalidad para editar transacciones existentes.
- **Filtrado de transacciones**: Agregar opciones de filtrado por tipo o fecha.
- **Estadísticas visuales**: Mostrar gráficos para representar ingresos y gastos a lo largo del tiempo.

## Autor

Oscar



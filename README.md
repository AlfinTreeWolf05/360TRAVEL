# 360TRAVEL
Hi there! 360 TRAVEL is a university project; it will be updated regulary.

# 360 TRAVEL — Sistema de Gestión y Reservaciones

Sistema web para una agencia de viajes que permite a los clientes consultar destinos turísticos y gestionar reservaciones, así como al personal administrar las operaciones de la agencia mediante un panel administrativo.

El proyecto está desarrollado con tecnologías web y una base de datos MySQL, y se implementa en un entorno Linux utilizando openSUSE Leap.

## 1. Características del sistema

### Sitio web público
- Consulta de destinos turísticos.
- Visualización de ofertas y servicios.
- Registro e inicio de sesión de clientes.
- Realización de reservaciones.
- Consulta de reservaciones personales.
- Cancelación de reservaciones.

### Panel administrativo
- Autenticación exclusiva para empleados.
- Administración de clientes.
- Gestión de destinos turísticos.
- Administración de ofertas.
- Gestión y seguimiento de reservaciones.
- Administración de pagos y facturas.
- Acceso a funciones según el cargo o rol del empleado.

## 2. Tecnologías utilizadas

| Tecnología | Función |
|---|---|
| PHP | Desarrollo del sitio web público |
| Laravel 13 | Framework del panel administrativo |
| HTML5 | Estructura de las páginas |
| CSS3 | Diseño y estilos visuales |
| JavaScript | Interactividad del sitio |
| MySQL | Almacenamiento de información |
| Apache HTTP Server | Servidor web |
| Composer | Gestión de dependencias de Laravel |
| openSUSE Leap | Sistema operativo de implementación |

## 3. Requisitos previos

Antes de instalar el sistema, se requiere contar con:

- Sistema operativo openSUSE Leap.
- Apache HTTP Server.
- PHP 8.3 o superior, compatible con Laravel 13.
- Extensiones de PHP requeridas por Laravel y el proyecto.
- MySQL Server.
- Composer.
- Acceso a una terminal con privilegios de administrador (`sudo`).
- Archivos del proyecto 360 TRAVEL.
- Archivo de respaldo de la base de datos (`.sql`).

## 4. Instalación del entorno

### 4.1 Actualizar el sistema

Abrir la terminal y actualizar los paquetes del sistema:

```bash
sudo zypper refresh
sudo zypper update
```

### 4.2 Instalar Apache

Instalar el servidor web Apache:

```bash
sudo zypper install apache2
```

Habilitar e iniciar el servicio:

```bash
sudo systemctl enable apache2
sudo systemctl start apache2
```

Verificar su estado:

```bash
sudo systemctl status apache2
```

### 4.3 Instalar PHP

Instalar PHP y las extensiones requeridas para ejecutar el sitio público y Laravel. Los paquetes exactos pueden variar según la versión de openSUSE Leap y los repositorios habilitados.

Verificar la instalación:

```bash
php -v
```

### 4.4 Instalar MySQL

Instalar y habilitar el servidor MySQL de acuerdo con los paquetes disponibles en el sistema.

Iniciar y habilitar el servicio:

```bash
sudo systemctl enable mysql
sudo systemctl start mysql
```

Verificar su estado:

```bash
sudo systemctl status mysql
```

## 5. Configuración de la base de datos

### 5.1 Crear la base de datos

Ingresar a MySQL:

```bash
mysql -u root -p
```

Crear o verificar la base de datos utilizada por el sistema:

```sql
CREATE DATABASE agenciadeviajes;
```

> Si la base de datos ya existe, no es necesario crearla nuevamente.

### 5.2 Importar el respaldo

Desde la terminal, importar el archivo SQL proporcionado:

```bash
mysql -u root -p agenciadeviajes < Dump.sql
```

Reemplazar `Dump.sql` por el nombre y ubicación reales del archivo de respaldo.

### 5.3 Verificar la importación

Ingresar a MySQL:

```bash
mysql -u root -p
```

Seleccionar la base de datos:

```sql
USE agenciadeviajes;
SHOW TABLES;
```

Verificar que las tablas del sistema se encuentren disponibles.

## 6. Instalación del sitio web público

1. Copiar la carpeta del sitio web público al directorio de proyectos configurado para Apache.
2. Verificar que los archivos PHP, CSS, JavaScript e imágenes estén presentes.
3. Configurar el acceso a la base de datos desde el archivo de conexión PHP.
4. Revisar que las credenciales de MySQL sean correctas.
5. Configurar Apache para apuntar al directorio público del sitio.

El sitio público debe poder visualizarse desde el navegador mediante la dirección configurada en el servidor.

## 7. Instalación del panel administrativo Laravel

### 7.1 Copiar el proyecto

Colocar la carpeta del panel administrativo Laravel en el directorio de aplicaciones del servidor.

Ingresar a la carpeta del proyecto:

```bash
cd /ruta/360travel-admin
```

### 7.2 Instalar Composer

Verificar que Composer esté disponible:

```bash
composer --version
```

Si no se encuentra instalado, instalarlo desde los repositorios disponibles o mediante el procedimiento oficial de Composer.

### 7.3 Instalar dependencias

Desde la raíz del proyecto Laravel, ejecutar:

```bash
composer install
```

### 7.4 Configurar el archivo `.env`

Crear el archivo de configuración de entorno a partir del archivo de ejemplo:

```bash
cp .env.example .env
```

Editar el archivo:

```bash
nano .env
```

Configurar los valores de la aplicación y la conexión a MySQL:

```dotenv
APP_NAME="360 TRAVEL"
APP_ENV=local
APP_DEBUG=true
APP_URL=http://localhost

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=agenciadeviajes
DB_USERNAME=web360
DB_PASSWORD=TU_CONTRASEÑA
```

Reemplazar las credenciales por las correspondientes al entorno instalado.

**Importante:** no compartir ni subir el archivo `.env` al repositorio.

### 7.5 Generar la clave de Laravel

Ejecutar:

```bash
php artisan key:generate
```

### 7.6 Configurar permisos

Laravel requiere permisos de escritura en las carpetas `storage` y `bootstrap/cache`.

```bash
chmod -R 775 storage bootstrap/cache
```

Los permisos y propietario deben ajustarse al usuario que utiliza Apache o PHP-FPM en el servidor.

### 7.7 Crear el enlace de almacenamiento

Ejecutar:

```bash
php artisan storage:link
```

### 7.8 Limpiar caché de configuración

```bash
php artisan optimize:clear
```

## 8. Configuración de Apache

El panel Laravel debe servirse desde su directorio `public`, no desde la raíz del proyecto.

El sitio público y el panel administrativo pueden configurarse mediante VirtualHosts independientes o rutas distintas, según la configuración del servidor.

Ejemplo de estructura conceptual:

```text
360 TRAVEL
├── sitio-publico/
│   ├── index.php
│   ├── css/
│   ├── js/
│   ├── img/
│   └── ...
│
└── 360travel-admin/
    ├── app/
    ├── routes/
    ├── resources/
    ├── storage/
    ├── vendor/
    └── public/
        └── index.php
```

La configuración de Apache debe apuntar al directorio de entrada del sitio público y al directorio `public` del panel Laravel, según las rutas asignadas.

## 9. Ejecución del sistema

### Sitio público

Abrir un navegador y acceder a la dirección configurada para el sitio web de la agencia.

### Panel administrativo

Acceder a la dirección asignada al panel administrativo de Laravel.

El personal deberá iniciar sesión utilizando sus credenciales de empleado registradas en la base de datos.

En un entorno local de pruebas también es posible iniciar Laravel temporalmente mediante:

```bash
php artisan serve
```

Por defecto, Laravel estará disponible en:

```text
http://127.0.0.1:8000
```

Este servidor de desarrollo no sustituye la configuración de Apache para una implementación permanente.

## 10. Solución de problemas

| Problema | Posible solución |
|---|---|
| Apache no inicia | Revisar el estado del servicio y los registros de Apache. |
| PHP no se reconoce | Verificar la instalación y la ruta de PHP. |
| Error de conexión MySQL | Comprobar el servicio, puerto, usuario y contraseña. |
| Error de permisos | Revisar permisos de `storage` y `bootstrap/cache`. |
| Error 500 en Laravel | Revisar `storage/logs/laravel.log` y la configuración de PHP. |
| Página no encontrada | Verificar las rutas de Apache y Laravel. |
| Imágenes no cargan | Verificar rutas, permisos y enlace de almacenamiento. |
| Error de sesiones | Comprobar la configuración de sesiones y la tabla correspondiente si se utiliza almacenamiento en base de datos. |

## 11. Seguridad

- No publicar credenciales de MySQL.
- Mantener el archivo `.env` fuera del repositorio.
- No habilitar `APP_DEBUG=true` en producción.
- Utilizar contraseñas seguras para empleados y usuarios de base de datos.
- Configurar permisos adecuados en los archivos del servidor.
- Mantener actualizado el sistema operativo y las dependencias.

## 12. Proyecto académico

360 TRAVEL es un proyecto académico orientado al desarrollo e integración de tecnologías web para la administración de una agencia de viajes. Su implementación permite poner en práctica conocimientos de desarrollo web, bases de datos, gestión de servidores Linux, autenticación y administración de información.

---

**Desarrollado como proyecto universitario — 360 TRAVEL.** Comunes

* **Error de permisos al ejecutar scripts:** Asegúrate de otorgar permisos de ejecución con `chmod +x script.sh`.
* **Conflictos de puertos:** Verifica qué proceso está usando el puerto con `sudo ss -tulpn | grep :8080`.
* **Logs del sistema:** Si lo ejecutaste como servicio, revisa los registros con `sudo journalctl -u mi-sistema.service -f`.

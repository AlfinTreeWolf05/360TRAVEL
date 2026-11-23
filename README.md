# 360TRAVEL
Hi there! 360 TRAVEL is a university project; it will be updated regulary.

## 📋 Requisitos Previos

Antes de comenzar, asegúrate de contar con un entorno actualizado de **openSUSE Leap** (15.5 o 15.6 recomendado) y permisos de administrador (`sudo`).

### Dependencias del Sistema
Ejecuta el siguiente comando en la terminal para actualizar tus repositorios e instalar las herramientas base necesarias (ajusta los paquetes según el lenguaje de tu proyecto):

```bash
sudo zypper refresh
sudo zypper update -y
sudo zypper install -y git curl wget
```

*(Opcional) Dependencias específicas según la tecnología de tu proyecto (descomenta o conserva solo las que utilices):*

* **Para Python:**
  ```bash
  sudo zypper install -y python311 python311-pip python311-devel
  ```
* **Para Node.js:**
  ```bash
  sudo zypper install -y nodejs20 npm20
  ```
* **Para compilación (C/C++/Rust/Go):**
  ```bash
  sudo zypper install -y -t pattern devel_basis
  ```
* **Para Docker:**
  ```bash
  sudo zypper install -y docker docker-compose
  sudo systemctl enable --now docker
  sudo usermod -aG docker $USER
  ```

---

## 🚀 Instalación

Sigue estos pasos para desplegar el proyecto en tu máquina local:

### 1. Clonar el repositorio
```bash
git clone https://github.com/tu-usuario/tu-repositorio.git
cd tu-repositorio
```

### 2. Configurar variables de entorno
Copia el archivo de ejemplo y edita los valores según tu entorno (bases de datos, puertos, claves API, etc.):
```bash
cp .env.example .env
nano .env
```

### 3. Instalar dependencias del proyecto
Elige el bloque correspondiente a tu stack tecnológico:

* **Si es Python:**
  ```bash
  python3.11 -m venv venv
  source venv/bin/activate
  pip install --upgrade pip
  pip install -r requirements.txt
  ```

* **Si es Node.js:**
  ```bash
  npm install
  ```

---

## ▶️ Ejecución

### Modo Desarrollo
Para iniciar el sistema en un entorno de pruebas o desarrollo:

```bash
# Ejemplo en Python
python main.py

# Ejemplo en Node.js
npm run dev
```

### Modo Producción (Opcional - Servicio Systemd)
Si deseas que el sistema se ejecute en segundo plano y arranque automáticamente con openSUSE:

1. Crea un archivo de servicio:
   ```bash
   sudo nano /etc/systemd/system/mi-sistema.service
   ```
2. Agrega la siguiente configuración (ajusta las rutas y el usuario):
   ```ini
   [Unit]
   Description=Servicio de Mi Sistema
   After=network.target

   [Service]
   User=tu_usuario
   WorkingDirectory=/ruta/a/tu-repositorio
   ExecStart=/ruta/a/tu-repositorio/venv/bin/python main.py
   Restart=always

   [Install]
   WantedBy=multi-user.target
   ```
3. Recarga el demonio e inicia el servicio:
   ```bash
   sudo systemctl daemon-reload
   sudo systemctl enable --now mi-sistema.service
   ```

---

## 🔥 Configuración del Firewall (Si aplica)

openSUSE Leap utiliza `firewalld` por defecto. Si tu sistema expone un puerto web o API (por ejemplo, el puerto `8080`), debes habilitarlo para acceder desde la red:

```bash
sudo firewall-cmd --add-port=8080/tcp --permanent
sudo firewall-cmd --reload
```

---

## 🛠️ Solución de Problemas Comunes

* **Error de permisos al ejecutar scripts:** Asegúrate de otorgar permisos de ejecución con `chmod +x script.sh`.
* **Conflictos de puertos:** Verifica qué proceso está usando el puerto con `sudo ss -tulpn | grep :8080`.
* **Logs del sistema:** Si lo ejecutaste como servicio, revisa los registros con `sudo journalctl -u mi-sistema.service -f`.

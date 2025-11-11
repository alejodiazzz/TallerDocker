la ia me dio este ejemplo pero no se:
# Manual de Usuario

Este manual describe cómo desplegar la aplicación de gestión de préstamos de aulas.

## Prerrequisitos

- Docker y Docker Compose instalados.
- Un cliente de git para clonar el repositorio.
- Maven para construir los proyectos.
- Una cuenta en Docker Hub para subir las imágenes (opcional).

## Construcción de las imágenes

1.  **Construir los proyectos:**
    Para cada servicio (`servicio-aulas`, `servicio-prestamos`, `servicio-reportes`), navegue al directorio del servicio y ejecute el siguiente comando para construir el proyecto y crear el archivo JAR:

    ```bash
    mvn clean install
    ```

2.  **Construir las imágenes de Docker:**
    Para cada servicio, navegue al directorio del servicio y ejecute el siguiente comando para construir la imagen de Docker. Reemplace `<su-usuario>` con su nombre de usuario de Docker Hub.

    ```bash
    docker build -t <su-usuario>/servicio-aulas:latest .
    docker build -t <su-usuario>/servicio-prestamos:latest .
    docker build -t <su-usuario>/servicio-reportes:latest .
    ```

## Despliegue de la aplicación

1.  **Modificar el archivo `docker-compose.yml`:**
    Abra el archivo `docker-compose.yml` y reemplace las siguientes líneas con el nombre de su imagen:

    ```yaml
    image: <su-usuario>/servicio-aulas:latest
    ...
    image: <su-usuario>/servicio-prestamos:latest
    ...
    image: <su-usuario>/servicio-reportes:latest
    ```

2.  **Iniciar la aplicación:**
    En el directorio raíz del proyecto, ejecute el siguiente comando para iniciar la aplicación:

    ```bash
    docker-compose up -d
    ```

## Acceso a los servicios

-   **Servicio de Aulas:** `http://localhost:8081/aulas`
-   **Servicio de Préstamos:** `http://localhost:8082/prestamos`
-   **Servicio de Reportes:** `http://localhost:8083/reportes`

## Reportes disponibles

-   `http://localhost:8083/reportes/horario-mas-frecuente`
-   `http://localhost:8083/reportes/frecuencia-aulas`
-   `http://localhost:8083/reportes/prestamos-por-estudiante`
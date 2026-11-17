# Plataforma Web de Aplicaciones Móviles

Aplicación web desarrollada con **Astro**, diseñada para ofrecer una interfaz de consulta y acceso a aplicaciones móviles mediante enlaces de descarga proporcionados por un servicio backend.

Este proyecto forma parte de una solución compuesta por dos componentes independientes: un frontend encargado de la presentación e interacción con el usuario y un backend responsable de proporcionar la información necesaria para las descargas.

## Arquitectura del proyecto

La solución está dividida en dos repositorios:

| Componente | Descripción | Repositorio |
|---|---|---|
| Frontend | Interfaz web y experiencia de usuario. | [Frontend](https://github.com/martinpez/Frontend-Proyecto-web-computacion) |
| Backend | Servicio encargado de proporcionar las URL de descarga de las aplicaciones móviles. | [Backend](https://github.com/martinpez/Backend-Proyecto-web-computaci-n) |

**Repositorio relacionado:**

[Consultar código fuente del Backend](https://github.com/martinpez/Backend-Proyecto-web-computaci-n)

## Tecnologías

- **Astro:** framework utilizado para el desarrollo de la aplicación web.
- **JavaScript:** lógica e interactividad del frontend.
- **HTML5:** estructura de la aplicación.
- **CSS3:** presentación y estilos de la interfaz.
- **Yarn:** gestión de dependencias y ejecución de scripts.

## Requisitos

Antes de ejecutar el proyecto, asegúrate de tener instalado:

- Node.js.
- Yarn.
- Git.

## Instalación y ejecución

Clona el repositorio:

```bash
git clone https://github.com/martinpez/Frontend-Proyecto-web-computacion.git
```

Ingresa al directorio:

```bash
cd Frontend-Proyecto-web-computacion
```

Instala las dependencias:

```bash
yarn install
```

Inicia el servidor de desarrollo:

```bash
yarn dev
```

La aplicación estará disponible en:

```text
http://localhost:4321
```

## Comandos disponibles

| Comando | Descripción |
|---|---|
| `yarn install` | Instala las dependencias. |
| `yarn dev` | Inicia el servidor de desarrollo. |
| `yarn build` | Genera la versión de producción. |
| `yarn preview` | Permite visualizar la versión compilada. |

## Integración con el Backend

Este frontend trabaja conjuntamente con un servicio backend independiente, encargado de proporcionar las direcciones de descarga de las aplicaciones móviles.

Para consultar su implementación, configuración y código fuente, visita:

**[Backend - Proyecto Web de Computación](https://github.com/martinpez/Backend-Proyecto-web-computaci-n)**

## Ejecución del proyecto completo

Para ejecutar la solución completa, es necesario disponer de ambos componentes:

1. Clonar y configurar el repositorio del backend.
2. Iniciar el servicio backend.
3. Clonar e instalar las dependencias del frontend.
4. Configurar la comunicación entre ambos componentes según la dirección del servicio backend.
5. Iniciar el frontend y verificar la integración.

## Autor

**Martín Pérez**

Desarrollador de software | Ingeniería de Sistemas

[GitHub](https://github.com/martinpez)

---

*Proyecto académico de desarrollo web y computación.*

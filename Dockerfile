# Imagen base
FROM node:18-alpine

# Establece el directorio de trabajo
WORKDIR /app

# Copia las dependencias
COPY package.json yarn.lock* ./

# Instala dependencias (usa yarn y evita instalaciones globales)
RUN yarn install --frozen-lockfile

# Copia el resto del proyecto
COPY . .

# Construye el proyecto Astro
RUN yarn build

# Expone el puerto usado por astro preview
EXPOSE 3000

# Comando para iniciar el servidor de previsualización
CMD ["yarn", "preview", "--host"]

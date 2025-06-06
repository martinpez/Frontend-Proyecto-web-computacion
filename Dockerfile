# Imagen base con Node y Alpine
FROM node:20-alpine

# Crea el directorio de trabajo
WORKDIR /app

# Copia archivos de dependencias
COPY package.json yarn.lock ./

# Instala dependencias con Yarn
RUN yarn install

# Copia el resto del proyecto
COPY . .

# Construye la app
RUN yarn build

# Expone el puerto que usa Astro preview
EXPOSE 4321

# Comando por defecto en producción
CMD ["yarn", "preview"]
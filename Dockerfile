# Usa una imagen base de Node.js
FROM node:18-alpine

# Directorio de trabajo
WORKDIR /app

# Copia los archivos de dependencias
COPY package.json yarn.lock* ./

# Instala dependencias y serve globalmente
RUN yarn install --frozen-lockfile && \
    yarn global add serve

# Copia el proyecto y construye
COPY . .
RUN yarn build

# Expone el puerto (serve usa el 3000 por defecto)
EXPOSE 3000

# Comando para servir los archivos estáticos
CMD ["serve", "-s", "dist"]
# Etapa de construcción
FROM node:20-alpine AS builder

WORKDIR /app

# 1. Copia solo los archivos necesarios para instalar dependencias
COPY package.json yarn.lock ./

# 2. Instala dependencias (incluyendo las de producción)
RUN yarn install --frozen-lockfile

# 3. Copia el resto de los archivos
COPY . .

# 4. Construye la aplicación (esto generará los archivos en dist/)
RUN yarn build

# Etapa de producción
FROM node:20-alpine

WORKDIR /app

# 5. Copia solo lo necesario desde la etapa de construcción
COPY --from=builder /app/package.json /app/yarn.lock ./
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/dist ./dist

# 6. Instala solo producción en la imagen final (opcional)
# RUN yarn install --production --frozen-lockfile

# 7. Puerto expuesto
EXPOSE 4321

# 8. Comando de inicio optimizado
CMD ["node", "./dist/server/entry.mjs"]
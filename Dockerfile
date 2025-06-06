FROM node:18-alpine

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install

COPY . .

# Expone el puerto usado por astro preview
EXPOSE 4321

# Comando para iniciar el servidor de previsualización
CMD ["yarn", "preview"]

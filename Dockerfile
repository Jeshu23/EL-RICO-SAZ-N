FROM node:18-alpine

WORKDIR /app

# Instalar dependencias
COPY package.json ./
RUN npm install

# Copiar todos los archivos
COPY . .

# Puerto expuesto
ENV PORT=8080
EXPOSE 8080

# Comando para iniciar el servidor
CMD ["npx", "serve", "-s", ".", "-l", "8080"]

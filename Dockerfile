# Imagen base
FROM node:18

# Directorio de trabajo
WORKDIR /app

# Copiar package.json e instalar dependencias
COPY package*.json ./
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer puerto
EXPOSE 8081

# Comando de inicio
CMD ["npm", "start"]

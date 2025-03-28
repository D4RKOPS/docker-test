# Usa una imagen base de Node.js
FROM node:18-alpine  

# Establece el directorio de trabajo
WORKDIR /app  

# Copia los archivos del proyecto
COPY package.json package-lock.json ./  

# Instala las dependencias
RUN npm install  

# Copia el resto de los archivos
COPY . .  

# Expone el puerto en el que corre la aplicación
EXPOSE 3000  

# Comando para iniciar la aplicación
CMD ["npm", "start"]

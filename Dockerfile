# Image de base
FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Exposition du port défini dans votre .env
EXPOSE 3000

CMD ["npm", "start"]
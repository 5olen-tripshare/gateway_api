FROM node:22-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install 

# Copier le reste du code source dans le conteneur
COPY . .

RUN chmod -R 777 /app


EXPOSE 5005

CMD ["eg", "gateway", "start"]

# Utiliser une image légère de Node.js
FROM node:18-alpine

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers package.json et package-lock.json pour installer les dépendances en premier
COPY package*.json ./

# Installer Express Gateway et les dépendances du projet
RUN npm install -g express-gateway && npm install

# Copier le reste du code source dans le conteneur
COPY . .

# Exposer le port utilisé par l'API Gateway (ex: 8080)
EXPOSE 5005

# Démarrer Express Gateway
CMD ["eg", "gateway", "start"]

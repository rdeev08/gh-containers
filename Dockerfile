FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.fcob8ub.mongodb.net
ENV MONGODB_USERNAME rochellevelasquez
ENV MONGODB_PASSWORD KPKm81FELMDvGEii

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]
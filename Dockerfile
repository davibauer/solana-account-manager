FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install --ignore-scripts
COPY src/ ./src
EXPOSE 3000
CMD ["npm", "start"]
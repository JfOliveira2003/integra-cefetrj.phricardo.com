FROM node:22-alpine
COPY package*.json .
RUN npm install
COPY . .
EXPOSE 3000
ENTRYPOINT["npx", "next", "dev"]

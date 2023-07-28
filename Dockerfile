FROM node:19

workdir /app

COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node","index.js"]
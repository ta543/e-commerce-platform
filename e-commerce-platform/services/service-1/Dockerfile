FROM node:14
WORKDIR /usr/src/app
COPY src/ .
COPY src/package*.json ./
RUN npm install
EXPOSE 80
ENV NAME Service1
CMD ["node", "main.js"]

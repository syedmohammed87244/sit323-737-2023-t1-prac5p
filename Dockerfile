FROM node:16-alpine
ENV APP_PORT=3000s
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
CMD [ "node", "server.js" ]
HEALTHCHECK --interval=10s --timeout=2s --start-period=15s \ 
CMD curl --fail http://localhost:3000/health || exit 1

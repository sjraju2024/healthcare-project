# Dockerfile for Patient Service
FROM node:16

WORKDIR /app

COPY patient-service.js /app

RUN npm install express

EXPOSE 3000

CMD ["node", "patient-service.js"]
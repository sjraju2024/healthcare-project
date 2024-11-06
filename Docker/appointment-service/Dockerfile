# Dockerfile for Appointment Service
FROM node:16

WORKDIR /app

COPY appointment-service.js /app

RUN npm install express

EXPOSE 3001

CMD ["node", "appointment-service.js"]
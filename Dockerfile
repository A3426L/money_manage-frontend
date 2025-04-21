FROM node:22
ENV NODE_ENV=development

WORKDIR /app
COPY app/package*.json ./

RUN npm install
COPY app/ ./
EXPOSE 5173
CMD ["npm", "run", "dev"]

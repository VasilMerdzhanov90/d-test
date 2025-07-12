# Development stage
FROM node:lts-alpine AS dev-stage

# Работна директория
WORKDIR /app

# Копирай package.json и package-lock.json
COPY package*.json ./

# Инсталирай зависимостите
RUN npm install

# Копирай целия проект
COPY . .

# Изложи порта, който Vue CLI използва (по подразбиране 8080)
EXPOSE 5173

# Стартирай dev server
CMD ["npm", "run", "watch"]

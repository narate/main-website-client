FROM node:slim

WORKDIR /app
COPY package*.json ./
RUN yarn install
COPY . .
EXPOSE 3000
ARG NUXT_HOST
ENV NUXT_HOST=${NUXT_HOST:-0.0.0.0}
CMD ["yarn", "dev"]

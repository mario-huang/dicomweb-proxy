FROM node:20

WORKDIR /app

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y cmake
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

COPY . .
RUN npm install

ENTRYPOINT ["npm", "run", "start"]
EXPOSE 5000

FROM node:20

WORKDIR /app

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y cmake
RUN apt clean && rm -rf /var/lib/apt/lists/*

COPY . .
RUN npm install

ENTRYPOINT ["npm", "run", "start"]
EXPOSE 5000

FROM oven/bun

WORKDIR /app

COPY . .
RUN bun install

ENTRYPOINT ["bun", "run", "start"]
EXPOSE 5000

FROM node:22

RUN apt-get update && apt-get install -y openssl unzip

RUN curl -fsSL https://bun.sh/install | bash
ENV PATH="/root/.bun/bin:${PATH}"

WORKDIR /app
COPY . .

RUN bun install

EXPOSE 3000

CMD ["bun", "start"]

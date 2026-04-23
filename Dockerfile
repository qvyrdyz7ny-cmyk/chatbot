FROM node:18-alpine

WORKDIR /app
COPY app.js .

RUN npm init -y && npm install express

RUN apk add --no-cache caddy

COPY Caddyfile /etc/caddy/Caddyfile

CMD sh -c "node app.js & caddy run --config /etc/caddy/Caddyfile --adapter caddyfile"

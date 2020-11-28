FROM node:8.16-alpine
RUN apk add --no-cache tini curl
WORKDIR /app
COPY app.js .
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["node", "app.js"]

FROM node:8.16-alpine
RUN apk add --no-cache tini curl
WORKDIR /app
COPY app.js .
EXPOSE 6000
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["node", "app.js"]

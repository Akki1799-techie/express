FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "examples/hello-world/index.js"]
EXPOSE 3000
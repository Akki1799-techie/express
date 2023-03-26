FROM node:18-alpine
WORKDIR C:/Users/gosai/Desktop/django-prac/akshay/express
COPY . .
RUN yarn install --production
CMD ["node", "examples/hello-world"]
EXPOSE 3000


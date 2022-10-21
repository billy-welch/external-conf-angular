FROM node:14.19.1-alpine3.15 as build
RUN apk --no-cache add --virtual .builds-deps build-base python3
WORKDIR /code
COPY angular-project/ /code/
RUN npm install
RUN npm run build

FROM nginx:1.23.2
COPY nginx.conf /etc/nginx/nginx.conf
WORKDIR /code
COPY --from=build /code/dist/angular-project .
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
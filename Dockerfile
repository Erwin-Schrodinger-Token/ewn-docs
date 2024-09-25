FROM node:20-bookworm as build
RUN mkdir /app
WORKDIR /app
COPY . .
RUN yarn
RUN yarn build || true

FROM nginx:latest
COPY --from=build /app/build /usr/share/nginx/html

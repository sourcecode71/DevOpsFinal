# Stage 1: Build the Angular application
FROM node:18 AS build

WORKDIR /src

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build --prod

# Stage 2: Serve the Angular application with Nginx
FROM nginx:alpine

# Copy the build output from the build stage
COPY --from=build /src/dist/dev-ops-final /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

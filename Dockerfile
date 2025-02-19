FROM node:18 AS build

WORKDIR /src

COPY package*.json ./
RUN npm install
COPY . .

RUN npm run build --prod

# Stage 2: Serve with Nginx
FROM nginx:alpine
COPY --from=build /src/dist/dev-ops-final/browser /usr/share/nginx/html

# Replace Nginx default config
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

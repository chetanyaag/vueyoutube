
FROM node:14 as build-stage

# Set the working directory in the container
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

# Use a smaller Nginx image to serve the production build
FROM nginx:alpine as production-stage

# Copy the build output from the build-stage container to the Nginx container
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]

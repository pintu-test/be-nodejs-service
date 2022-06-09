FROM node:14.16.0-alpine

# The working directory is /app
WORKDIR /app

# Copy the code into the stage
COPY . .

# Installing module with silent
RUN npm i -s

# Expose the service port
EXPOSE 3000

ENTRYPOINT ["npm", "start"]
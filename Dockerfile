FROM node:latest
WORKDIR /frontapp
COPY . .
RUN npm install
EXPOSE 8080
CMD ["npm", "run", "serve"]
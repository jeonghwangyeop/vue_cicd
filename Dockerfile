FROM node:latest
WORKDIR /frontappCOPY . .
RUN npm install
EXPOSE 8080
CMD ["npm", "run", "serve"]
FROM node:latest
WORKDIR /frontappCOPY . .
RUN npm installEXPOSE 8080
CMD ["npm", "run", "serve"]
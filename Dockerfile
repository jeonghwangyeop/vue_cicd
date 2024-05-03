FROM node:latest AS build
WORKDIR /frontapp
COPY . .
RUN npm install
RUN npm run build

# production
FROM node:14-alpine
WORKDIR /frontapp
COPY --from=build /frontapp /frontapp
CMD ["npm", "run", "serve"]
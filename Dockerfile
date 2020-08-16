FROM node:alpine
ADD . /app
WORKDIR /app
COPY ./package.json . 
RUN npm install  
COPY . .
RUN npm run start
EXPOSE 3000
CMD ["npm","run","start"] 

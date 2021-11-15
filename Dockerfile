FROM node:14.16.0-alpine3.13
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
ENV API_URL=http://api.myapp.com
EXPOSE 3000
# CMD is runtime command
# shell form
# CMD npm start
# execute form
CMD ["npm","start"]
# ENTRYPOIT is same as CMD but it cannot be overwritten as easily as CMD.
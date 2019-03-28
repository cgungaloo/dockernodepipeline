FROM node
COPY . /app/
WORKDIR /app
ENTRYPOINT ["npm","start"]

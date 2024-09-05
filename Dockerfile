#Take the base images 
FROM node:14

#Set the working Directory
WORKDIR app/

#Copy the packages
COPY package*.json .

#instal npm
RUN npm install --force 

COPY . .

#build the npm

RUN npm run build 

EXPOSE 3000

CMD ["npm", "start"]

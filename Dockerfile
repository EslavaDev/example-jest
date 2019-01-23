FROM node
LABEL Eslavadev <danieleslava52@gmail.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app
RUN npm install
COPY . /usr/src/app

ENV NODE_ENV production

EXPOSE 3000
CMD ["npm", "run", "start"]

# FROM node:10

# COPY ["package.json", "package-lock.json", "/usr/src/"]

# WORKDIR /usr/src

# RUN npm install --only=production

# COPY [".", "/usr/src/"]

# RUN npm install --only=development

# EXPOSE 3000

# CMD ["npx", "nodemon", "index.js"]

# FROM node:10

# COPY ["package.json", "package-lock.json", "/usr/src/"]

# WORKDIR /usr/src

# RUN npm install
# RUN npm install -g nodemon
# RUN npm install -g npx

# COPY [".", "/usr/src/"]

# EXPOSE 3000

# # CMD ["npm", "start"]
# CMD ["npx", "nodemon", "--legacy-watch", "index.js"]

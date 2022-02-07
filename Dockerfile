FROM node:16-alpine3.14

WORKDIR /usr/src/app

# COPY package.json ./
# COPY package-lock.json ./
# RUN yarn install
# COPY . .

WORKDIR /usr/src/app/remix-jokes

ENV FLYCTL_INSTALL /root/.fly
ENV PATH $FLYCTL_INSTALL/bin:$PATH
ENTRYPOINT ["npm", "run", "dev"]
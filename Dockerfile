From node:19-alpine3.15
RUN mkdir reddit-clone
RUN apk add --no-cache git
RUN git clone https://github.com/abhaykohli/reddit-clone-k8s
RUN npm cache clean --force
WORKDIR reddit-clone-k8s
RUN npm install --save-dev next
RUN npm install -g npm@9.6.3
EXPOSE 3000
CMD ["npm","run","dev"]

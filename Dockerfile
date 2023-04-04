From node:19-alpine3.15
RUN mkdir reddit-clone
RUN cd reddit-clone
RUN git clone https://github.com/abhaykohli/reddit-clone-k8s
RUN npm install
EXPOSE 3000
CMD ["npm","run","dev"]
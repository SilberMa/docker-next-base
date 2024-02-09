FROM node:latest
RUN npm install -g npm@9.4.2
WORKDIR /app
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["node"]
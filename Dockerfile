FROM node:9.10-alpine

WORKDIR /app
COPY say.js ./

RUN chown -R node:node .
USER node

ENV NODE_ENV=production
ENTRYPOINT ["node", "say.js"]
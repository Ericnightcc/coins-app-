FROM node:24-bookworm-slim
WORKDIR /app
ADD --chown=node:node coin-conductor.tar.gz /app/
RUN node --test tests/*.test.mjs && mkdir -p /app/data && chown node:node /app/data
USER node
ENV HOST=0.0.0.0 PORT=8080 NODE_ENV=production DATA_DIR=/app/data
EXPOSE 8080
CMD ["node", "server.mjs"]

FROM node:20-bullseye-slim

WORKDIR /srv/app

# Use a non-root user in production if desired (optional)

ENV NODE_ENV=production

# Copy the Strapi application (strapi is a subfolder of cms/ in this repo)
COPY ./strapi/ .

# Install production dependencies and build Strapi
RUN npm ci --omit=dev \
    || npm install --production

RUN npm run build || true

EXPOSE 1337

CMD ["npm", "run", "start"]

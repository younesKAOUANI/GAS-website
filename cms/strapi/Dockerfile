FROM node:18-alpine

WORKDIR /app

# Install build tools & libraries for sharp
RUN apk add --no-cache \
    python3 \
    make \
    g++ \
    libc6-compat \
    vips-dev

# Copy package.json first for caching
COPY package*.json ./

RUN npm install --legacy-peer-deps --include=optional

# Copy rest of Strapi
COPY . .

# Build admin panel
RUN npm run build

EXPOSE 1337

CMD ["npm", "run", "start"]

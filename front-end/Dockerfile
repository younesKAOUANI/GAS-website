### Build stage
FROM node:20-alpine AS builder
ARG NEXT_PUBLIC_STRAPI_URL=''
ENV NEXT_PUBLIC_STRAPI_URL=${NEXT_PUBLIC_STRAPI_URL}
WORKDIR /app

# Copy package files and install
COPY package*.json ./
RUN npm ci

# Copy rest of the source and build
COPY . .
RUN npm run build

### Production image
FROM node:20-alpine
ARG NEXT_PUBLIC_STRAPI_URL=''
ENV NEXT_PUBLIC_STRAPI_URL=${NEXT_PUBLIC_STRAPI_URL}
WORKDIR /app
ENV NODE_ENV=production

# Copy built artifacts and public
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/public ./public
COPY --from=builder /app/package.json ./package.json

# Install only production deps
RUN npm ci --production

EXPOSE 3000
CMD ["npm", "start"]

# Use Node.js Alpine image
FROM node:18-alpine AS base

# Install bash and curl for debugging
RUN apk add --no-cache bash curl

# Set the working directory inside the container
WORKDIR /coursehub_container/coursehub_next_frontend

# Copy only package.json and package-lock.json to leverage caching
COPY package.json ./

# Install project dependencies with verbose logs
RUN npm ci --only=production --loglevel=verbose

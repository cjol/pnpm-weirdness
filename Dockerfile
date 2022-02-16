FROM node:16-alpine as pnpm
RUN apk add --no-cache make
RUN corepack enable
RUN corepack prepare pnpm@6.31.0 --activate
COPY . .
RUN pnpm config set unsafe-perm true
RUN pnpm fetch 
RUN pnpm install 
RUN ls packages/fine
RUN ls packages/models

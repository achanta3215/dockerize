#Base Image
FROM node:21-alpine

# Set Working Directory
WORKDIR /app

# Copy Package Files
COPY package*.json ./  

RUN npm install -g pnpm
# Install Dependencies 
RUN pnpm install  # Install only production dependencies for efficiency

# Copy Project Files
COPY . .

# Build Nuxt Application
RUN npm run build 

# Expose Server Port
EXPOSE 3000

CMD [ "node", ".output/server/index.mjs" ]

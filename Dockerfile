# Step 1: Base Image
FROM node:18

# Step 2: App directory
WORKDIR /app

# Step 3: Package files copy
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy source code
COPY . .

# Step 6: Build NestJS app
RUN npm run build

# Step 7: Expose port
EXPOSE 3000

# Step 8: Run command
CMD ["npm", "run", "start:prod"]

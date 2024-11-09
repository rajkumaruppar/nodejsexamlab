# Step 1: Use the official Node.js image as the base image
FROM node:16

# Step 2: Set the working directory in the container
WORKDIR /usr/src/app

# Step 3: Copy the package.json and package-lock.json (if exists) first to install dependencies
COPY package*.json ./

# Step 4: Install the dependencies
RUN npm install

# Step 5: Copy the rest of the application files into the container
COPY . .

# Step 6: Expose the port your app will run on (default is 3000)
EXPOSE 3000

# Step 7: Specify the command to run your app
CMD ["node", "index.js"]

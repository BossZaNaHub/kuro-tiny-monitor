# Use Alpine Linux as a base image
FROM alpine:latest

# Install the tzdata package to set the timezone
RUN apk update && \
    apk add --no-cache tzdata

# Set the working directory inside the container
WORKDIR /app

# Copy your application files into the container
COPY . .

#Optional Seed
RUN ./your-app-binary args

# Add any additional commands to set up and run your application
CMD ["./your-app-binary", "args"]

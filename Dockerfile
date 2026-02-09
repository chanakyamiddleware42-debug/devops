# Use a base image
FROM ubuntu:22.04

# Install packages
RUN apt-get update && apt-get install -y curl

# Default command
CMD ["echo", "Hello from Docker!"]

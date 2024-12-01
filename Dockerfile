# Use the official Ubuntu image as a base
FROM ubuntu:20.04

# Set environment variables to avoid some interactive prompts during build
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and add the universe repository for extra packages
RUN apt-get update && apt-get install -y \
    software-properties-common && \
    add-apt-repository universe && \
    apt-get update

# Install necessary packages for AVR development
# Install AVR GCC toolchain
RUN apt-get install -y gcc-avr

# Install AVR C library
RUN apt-get install -y avr-libc

# Install AVRDUDE (tool for uploading code to Arduino)
RUN apt-get install -y avrdude

# Install Make tool to automate compilation
RUN apt-get install -y make

# Install Git for cloning repositories
RUN apt-get install -y git

# Install screen for serial communication
RUN apt-get install -y screen

# Install build tools (e.g., gcc, make)
RUN apt-get install -y build-essential

# Clean up apt cache to reduce image size
RUN rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /workspace

# Command to run when the container starts (will be interactive)
CMD [ "bash" ]

# Use an Ubuntu-based image as the base
FROM ubuntu:20.04

# Update the package lists and install CMake
RUN apt-get update && apt-get install -y cmake
RUN apt-get install -y g++ && apt-get install -y gcc
# RUN apt-get install -y gcc && apt-get install -y g++

# Set the working directory inside the container
WORKDIR /work

# Copy the CMakeLists.txt file and the source code to the container
COPY CMakeLists.txt .

# Copy the source code to the container
COPY src/ /work/src/
# Generate the build system using CMake
WORKDIR /work/build
RUN cmake -DENABLE_TEST=false ..
RUN make

# Specify the command to run when the container starts
CMD ["./App"]
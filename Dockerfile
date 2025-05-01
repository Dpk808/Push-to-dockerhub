# Use an ARM64-compatible JDK base image
FROM eclipse-temurin:11-jdk-alpine

# Set environment variable to avoid interactive prompts
ENV ACTIVEMQ_HOME=/opt/apache-activemq-5.17.0

# Copy the whole directory of ActiveMQ into the image
COPY apache-activemq-5.17.0 ${ACTIVEMQ_HOME}

# Set the working directory to the bin folder 
WORKDIR ${ACTIVEMQ_HOME}/bin

# Expose default ActiveMQ ports
EXPOSE 61616 8161

# Start the ActiveMQ server
ENTRYPOINT ["./activemq", "console"]

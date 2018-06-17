#!/bin/bash

# Update your local package index
apt-get update

# Install PIP package
apt-get install -y maven=${MAVEN_VERSION}.*

# Remove the local package index
rm -rf /var/lib/apt/lists/*

# Print the installed Gradle version
mvn --version

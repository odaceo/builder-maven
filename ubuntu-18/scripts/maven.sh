#!/bin/bash

# This install script is intended to install Maven.
#
# Environment variables:
# - MAVEN_VERSION: the version to install

# Update your local package index
apt-get update

# Install Maven package
apt-get install -y maven=${MAVEN_VERSION}.*

# Remove the local package index
rm -rf /var/lib/apt/lists/*

# Print the installed Maven version
mvn --version

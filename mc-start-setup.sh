#!/bin/bash

SERVER="your .jar server file" # f.eks. paper-1.21.11-128.jar 

MIN="-Xms1G" # Minimum GB the server needs
MAX="-Xmx8G" # Maximum GB the server can use

java $MIN $MAX -jar $SERVER nogui

# If you like it simpler (1 line of code):
#
# java -Xms1G -Xmx8G -jar server.jar nogui
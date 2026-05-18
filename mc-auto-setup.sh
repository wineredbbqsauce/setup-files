#!/bin/bash

SERVER="your .jar server file" # f.eks. paper-1.21.11-128.jar 

MIN="-Xms1G" # Minimum GB the server needs
MAX="-Xmx8G" # Maximum GB the server can use

# Colors
GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
NC="\033[0m" # No Colour


# Navigate to the script's directory
cd "$(dirname "$0")"


if [ -f eula.txt ] && grep -q "eula=true" eula.txt; then
    echo -e "${GREEN}EULA is already approved. Starting the server...${NC}"
else
    echo -e "${YELLOW}First time startup, or ${BLUE}EULA ${YELLOW}is not approved.${NC}"
    
    # Auto eula=true
    echo "eula=true" > eula.txt
    echo -e "${YELLOW}Auto accepted eula.txt${NC}"
fi

# Start the Minecraft server
exec java $MIN $MAX -jar $SERVER nogui

# If you like it simpler (1 line of code):
#
# java -Xms1G -Xmx8G -jar server.jar nogui

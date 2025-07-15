#!/bin/bash
echo "Starting Castle Map Server..."
echo "================================"
echo ""
echo "Server will run at: http://localhost:3000"
echo ""
echo "Instructions:"
echo "1. Place your room images in the 'room-images' folder"
echo "2. When uploading an image in the editor, copy it to 'room-images'"
echo "3. Images should be named clearly (e.g., coffee-room.jpg)"
echo ""
echo "Press Ctrl+C to stop the server"
echo "================================"
echo ""

# Check if node is installed
if ! command -v node &> /dev/null
then
    echo "Node.js is not installed. Please install Node.js first."
    exit 1
fi

# Start the server
node server.js 
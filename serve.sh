#!/bin/bash
# Nikoli McSurley Portfolio — Local Dev Server
# Double-click this file or run: bash serve.sh

PORT=3000
DIR="$(cd "$(dirname "$0")" && pwd)"

echo ""
echo "  ┌─────────────────────────────────────────┐"
echo "  │   Nikoli McSurley Portfolio              │"
echo "  │   Local server starting on :$PORT         │"
echo "  └─────────────────────────────────────────┘"
echo ""

# Kill anything already on the port
lsof -ti tcp:$PORT | xargs kill -9 2>/dev/null

# Open browser after short delay
(sleep 0.8 && open "http://localhost:$PORT/index.html") &

# Start server
cd "$DIR"
python3 -m http.server $PORT --bind 127.0.0.1


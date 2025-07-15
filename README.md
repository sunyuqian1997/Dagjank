# Castle Interactive Map

An interactive castle floor plan with clickable room overlays, draggable positioning, and image support. The application automatically loads room layouts from `loadme.json` and provides a full editing interface.

## Setup Instructions

### Running with Local Server (Recommended)

1. Make sure Node.js is installed on your system
2. Run the server:
   ```bash
   chmod +x start-server.sh
   ./start-server.sh
   ```
   Or directly:
   ```bash
   node server.js
   ```
3. Open http://localhost:3000 in your browser

### Layout Loading

The application automatically loads room layouts from `loadme.json` on startup. This file contains:
- Room positions and properties
- Floor assignments
- Image mappings for each room

**If automatic loading fails** (e.g., `loadme.json` is missing or corrupted):
- The application will fall back to localStorage
- You can manually import `loadme.json` using the **"Import Layout"** button
- Or start with a blank layout and use **"Add Room"** to create rooms manually

### Image Management

1. Place room images in the `room-images` folder
2. When uploading an image through the editor:
   - Select the image file
   - Copy the file to the `room-images` folder manually
   - The system will reference it by filename
3. Images are automatically mapped from `loadme.json` during initial load

## How to Use

### Normal Mode
- **Hover** over rooms to see information panel (follows cursor)
- **Click** rooms to keep them selected

### Edit Mode
- Click **"Edit Mode"** to enable editing features
- **Single Click**: Select a room (blue border)
- **Double Click**: Open room properties editor
- **Drag Room**: Move to new position
- **Drag Corners**: Resize the room
- **Add Room**: Click "Add Room" to create new rooms

### Room Properties Editor
- Edit room name, floor, description
- Change room type (affects color)
- Upload/remove room images
- Delete the room



## Files

- `index.html` - Main interactive map application
- `loadme.json` - Room layout and image mapping data (automatically loaded on startup)
- `server.js` - Simple Node.js server for serving files
- `start-server.sh` - Server startup script
- `room-images/` - Directory for room images
- `final.png` - Current castle floor plan image
- `README.md` - This file





## Troubleshooting

**If rooms don't appear on startup:**
1. Check that `loadme.json` exists in the project root
2. Verify the file is valid JSON (check browser console for errors)
3. Ensure the local server is running (rooms won't load from `file://` URLs)
4. If automatic loading fails, use **"Import Layout"** button to manually load `loadme.json`

**If images don't display:**
1. Verify image files exist in the `room-images/` folder
2. Check that filenames in `loadme.json` match actual file names
3. Ensure the local server is running to serve image files


## Credits

Thanks Dugstugl 2025

**Team Members** (alphabetical order):
- Adam Smith
- Alena Denisova
- Antonio Liapis
- Tim Merino
- Yuqian (Uchan) Sun 
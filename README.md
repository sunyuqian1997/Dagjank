# Castle Interactive Map

An interactive castle floor plan with clickable room overlays, draggable positioning, and image support.

## Features

- **Interactive Room Overlays**: Click or hover over rooms to see information
- **Draggable Room Positioning**: Edit mode allows you to reposition room buttons
- **Room Image Support**: Add images to rooms for visual reference
- **Cursor-Following Info Panel**: Room information follows your mouse
- **Resize Room Buttons**: Drag corners to resize room areas
- **Add/Delete Rooms**: Create new rooms or remove existing ones
- **Import/Export**: Save and load complete layouts with images
- **Multiple Room Types**: Different colors for coffee rooms, restrooms, dining areas, etc.

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

### Image Management

1. Place room images in the `room-images` folder
2. When uploading an image through the editor:
   - Select the image file
   - Copy the file to the `room-images` folder manually
   - The system will reference it by filename

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

### Data Management
- **Save Layout**: Saves all room positions and properties
- **Reset to Default**: Restores original layout (deletes custom rooms)
- **Export Layout**: Download layout as JSON file
- **Import Layout**: Load previously saved layout

## Files

- `castle-map-overlay.html` - Main interactive map application
- `server.js` - Simple Node.js server for serving files
- `start-server.sh` - Server startup script
- `room-images/` - Directory for room images
- `final.png` - Current castle floor plan image
- `image.png` - Original castle floor plan image
- `README.md` - This file

## Room Types

- **Default**: Blue
- **Office**: Light Blue
- **Coffee Room**: Orange
- **Restroom**: Green
- **Dining Room**: Deep Orange
- **Storage**: Pink
- **Lecture Hall**: Purple
- **Library**: Deep Purple

## Technical Details

- Built with vanilla HTML, CSS, and JavaScript
- Uses localStorage for data persistence (room properties only)
- Images served from local file system via Node.js server
- Responsive design with cursor-following info panel
- Event delegation for better performance

## Version History

- v1.0: Basic interactive map with room information
- v2.0: Added drag-and-drop positioning with save/load functionality
- v3.0: Improved UI with transparent buttons and bottom-left info panel
- v4.0: Added image support, cursor-following panel, room editing, and local server 
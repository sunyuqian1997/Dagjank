# Castle Interactive Map

An interactive castle floor plan with clickable room overlays and draggable positioning.

## Features

- **Interactive Room Overlays**: Click or hover over rooms to see information
- **Draggable Room Positioning**: Edit mode allows you to reposition room buttons
- **Persistent Storage**: Room positions are saved to localStorage
- **Multiple Room Types**: Different colors for coffee rooms, restrooms, dining areas, etc.
- **Responsive Design**: Works on desktop and mobile devices

## Files

- `castle-map-overlay.html` - Main interactive map with transparent overlays
- `castle-map.html` - Original SVG-based map
- `image.png` - Castle floor plan image
- `README.md` - This file

## How to Use

1. Open `castle-map-overlay.html` in a web browser
2. **Normal Mode**: 
   - Hover over rooms to see information in the bottom-left panel
   - Click on rooms to keep them selected
3. **Edit Mode**: 
   - Click "Edit Mode" to enable room repositioning
   - Drag room buttons to new positions
   - Click "Save Positions" to preserve your layout
4. **Debug Mode**: Shows red overlays for easier positioning

## Controls

- **Edit Mode**: Toggle room dragging functionality
- **Toggle Debug**: Show/hide position overlays
- **Save Positions**: Save current room positions to browser storage
- **Reset to Default**: Return all rooms to original positions

## Technical Details

- Built with vanilla HTML, CSS, and JavaScript
- Uses CSS transforms and positioning for interactive elements
- localStorage for persistent room positioning
- Responsive design with mobile-friendly layout

## Version History

- v1.0: Basic interactive map with room information
- v2.0: Added drag-and-drop positioning with save/load functionality
- v3.0: Improved UI with transparent buttons and bottom-left info panel 
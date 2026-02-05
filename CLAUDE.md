# Vertical Rooks Game - Project Documentation

## Overview
- Two-player turn-based strategy board game
- Player (green rooks) vs AI opponent (red rooks)
- Built with Phaser 2.x framework (HTML5 game engine)
- Pure client-side JavaScript, no backend or build process

## Project Structure
- `/index.html` - Entry point, game canvas container
- `/css/style.css` - Game styling
- `/js/Game.js` - Main game logic (7.6KB)
- `/js/phaser.js` - Phaser framework (vendored, 3.3MB)
- `/assets/` - Game assets (greenRook.png, redRook.png)

## Key Game Mechanics
- **Board**: 8 rows × 10 columns
- **Movement**: Rooks move only vertically within their column
- **Restrictions**: Cannot jump over opponent pieces
- **Victory**: Player who cannot move loses

## AI Implementation
- Uses **Nim-sum strategy** (XOR calculation from combinatorial game theory)
- Optimal play algorithm - AI will always make the best move
- Located in `js/Game.js` - see `computerMove()` function

## Code Patterns & Conventions
- ES5 JavaScript (no modern ES6+ features)
- Phaser 2.x API usage
- State management via Phaser game states
- Drag-and-drop implemented with Phaser's input system

## Important Functions (js/Game.js)
- `create()` - Game initialization, board setup
- `playerMove()` - Handles player rook movement with drag-and-drop
- `computerMove()` - AI logic using Nim-sum calculation
- `checkForWin()` - Victory condition checking
- `isValidMove()` - Movement validation

## No Build Process
- This is a static web application
- All dependencies vendored (no npm/package.json)
- Can run directly by opening index.html or serving via any static file server
- Phaser.js is included as a standalone file, not via CDN

## Development Notes
- To test locally: Use any static file server (python -m http.server, etc.)
- No compilation, transpilation, or bundling required
- Game state is entirely client-side, no persistence

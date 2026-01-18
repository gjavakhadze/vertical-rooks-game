# Vertical Rooks

Vertical Rooks is a two-player, turn-based strategy board game built with the Phaser game engine. One player competes against an AI, with the goal of trapping the opponent's pieces.

[**Click here to play the game!**](https://gjavakhadze.github.io/vertical-rooks-game)

![Green Rook](https://gjavakhadze.github.io/vertical-rooks-game/assets/greenRook.png)

## How to Play

The game is played on an 8x10 board. Both you (Green) and the AI (Red) have one rook in each of the ten columns.

1.  **Objective**: The goal is to make the last possible move. The player who cannot make a legal move loses the game.
2.  **Movement**:
    *   Rooks can only move vertically within their assigned column.
    *   You can move a rook to any unoccupied square in its column, but you **cannot** jump over the opponent's rook.
3.  **Turns**:
    *   You, the Green player, go first.
    *   To make a move, click and drag one of your green rooks to a new position in its column.
    *   The AI will automatically make its move after yours.
4.  **Winning**: You win when the AI has no legal moves left. You lose if you cannot make a move.

## Technical Details

*   **Framework**: The game is developed using the [Phaser](https://phaser.io/) HTML5 game framework.
*   **Game Logic**: The core game logic, including the board setup, piece movement, and the computer's AI, is located in `js/Game.js`.
*   **AI Strategy**: The computer opponent uses a strategy based on calculating the Nim-sum (XOR sum) of the distances between the rooks in each column, a concept from combinatorial game theory. This allows it to determine the optimal move to secure a win if one is available.
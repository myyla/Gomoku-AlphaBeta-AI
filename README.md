# Gomoku

Gomoku is a classic strategy game played on a grid, where the goal is to get five of your pieces in a row (horizontally, vertically, or diagonally). This implementation of Gomoku is written in Java and uses the AlphaBeta and MinMax algorithms to power the artificial intelligence of the computer player. The game also utilizes the Swing interface for its graphical user interface.

In addition to playing against the computer, this implementation of Gomoku also allows for human-vs-human gameplay and includes options to save games in a database using MySQL. The game also offers three difficulty levels (easy, medium, hard) and includes authentication for players.

## Getting Started

To start playing Gomoku, you will need to have the Java Development Kit (JDK) and MySQL installed on your machine. You can download the JDK from the [Oracle website](https://www.oracle.com/java/technologies/javase-downloads.html) and MySQL from the [MySQL website](https://dev.mysql.com/downloads/).

Once you have the JDK and MySQL installed, you can clone this repository to your local machine using the following command:
    git clone https://github.com/your-username/gomoku.git

## Gameplay

Gomoku is a turn-based game. Players take turns placing their pieces on the grid, with the goal of getting five in a row. The first player to achieve this wins the game.

In this implementation of Gomoku, you can choose to play against the computer, against another human player, or load a previously saved game from the database. The computer player is powered by the AlphaBeta and MinMax algorithms, which allow it to make strategic decisions based on the current state of the board. You can also choose from three difficulty levels: easy, medium, or hard. The AI depth for each difficulty level is as follows:

- Easy: 3
- Medium: 4
- Hard: 8

There is no AI timeout in this implementation of Gomoku.

## Customization

There are several options that you can adjust to customize your game of Gomoku. These options can be found in the `Config` class, and include the following:

- `BOARD_SIZE`: The size of the game board (default is 19x19).
- `WIN_LENGTH`: The number of pieces required in a row to win the game (default is 5).

Note that the board size and win length are fixed in this implementation and cannot be changed.

## Additional Resources

- [AlphaBeta algorithm on Wikipedia](https://en.wikipedia.org/wiki/Alpha%E2%80%93beta_pruning)

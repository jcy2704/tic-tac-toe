<p align="center">
  <a href="https://github.com/jcy2704/oop-ruby">
    <img src="https://res.cloudinary.com/growsurf-prod/image/upload/v1582211139/production/gnysw2objzekbagrqiax.png" alt="Logo" width="350" height="70">
  </a>
</p>

<h1 align="center">Tic-Tac-Toe Game</h1>

<p align="center">
  <strong>Project created by Steven Jack Chung and David Leonardo Castillo</strong>
  <br>
  It was based on the project in the Ruby Module in Microverse
</p>

<p align="center">
  <a href="https://github.com/jcy2704/oop-ruby/issues">
    <img src="https://img.shields.io/badge/REPORT%20A%20BUG-purple?style=for-the-badge">
  </a>
   ‎ ‎ ‎ ‎
  <a href="https://github.com/jcy2704/oop-ruby/issues">
    <img src="https://img.shields.io/badge/Request%20a%20feature-purple?style=for-the-badge">
  </a>
</p>

## Table of Contents
- [❌About Tic-Tac-Toe⭕](#about-tic-tac-toe)
- [📐 About The Project](#about-the-project)
- [📋 Game Rules](#game-rules)
- [📝 Game Instructions](#game-instructions)
- [![Ruby](https://cdn.emojidex.com/emoji/px16/Ruby.png) Built With Ruby](#built-with)
- [🖥️ Setup for starting Tic Tac Toe](#setup-for-starting-tic-tac-toe)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [💻 Run Tic-Tac-Toe](#run-tic-tac-toe)
  - [Windows](#windows)
  - [Mac and Linux](#mac-and-linux)
- [👥 Authors](#authors)
- [🤝 Contributing](#-contributing)
- [⭐ Show your support](#show-your-support)

## ❌About Tic-Tac-Toe ⭕
Tic-tac-toe is a paper-and-pencil game for two players, X and O, who take turns marking the spaces in a 3×3 grid. The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row is the winner.

<img width="524" alt="screen tic" src="https://user-images.githubusercontent.com/31552010/96631684-41254a00-12dc-11eb-8ffe-0425854564a9.png">

<hr>

## 📐 About The Project
We created the game Tic Tac Toe using Ruby.

The game has a basic interface that runs in the terminal.

The goals of this project are:

- Practice with OOP (Object Oriented Programming) using Ruby.
- Learn how to create and structure a Ruby project.
- Learn to manage the files with correct usage to make code maintainable.
- Practice Git Flow and Github Flow creating branches for different features and for version control.
- This is part of the Odin project curriculum https://www.theodinproject.com/courses/ruby-programming/lessons/oop

## 📋 Game Rules

- Two player game
- Player will have tokens or symbols (X or O)
- Players take turns choosing a cell of the board to mark their symbol.
- A player can only choose an empty cell if not will return an error until input is in an empty cell.
- The first player to complete a succession of 3 of their assigned symbol (O's or X's) in a row, column or diagonal wins!
- If all of the cells are filled with a symbol and no player matched 3 symbols, the game ends in a tie.

## 📝 Game Instructions

Once you run the game on the terminal, follow the instructions and prompts on screen.
- Both players should enter their preferable name or nickname
- Then it will display your tokens (X or O) and the turns will go accordingly to first and second player
- After the board is displayed the player should input their token accordingly to the empty slot (1 to 9).

For example:
```
Figure 1.                   Figure 2.
[ ]  [ ]  [ ]               [X]  [ ]  [ ]
 1    2    3                 1    2    3
[ ]  [ ]  [ ]      -->      [ ]  [ ]  [ ]
 1    2    3                 4    5    6
[ ]  [ ]  [ ]               [ ]  [ ]  [ ]
 1    2    3                 7    8    9

Player 1 is your turn! What will be your play?

1
```
**Figure 1. Before input in an empty cell**

**Figure 2. After input in an empty cell**

- If the player try to input in a filled slot, it will prompt again until the player input an empty slot.
- Players' goal is to connect three tokens consecutive by row, column or diagonal.

For example
```
[O]  [O]  [O]               [X]  [X]  [X]
 1    2    3                 1    2    3
[O]  [O]  [ ]       or      [X]  [X]  [ ]
 1    2    3                 4    5    6
[O]  [ ]  [O]               [X]  [ ]  [X]
 1    2    3                 7    8    9
```

- You win after connecting three tokens
- After winning, you'll both decide if want to play again and build up a scoreboard.

**Enjoy!!**

## Built With

- [Ruby ![Ruby](https://cdn.emojidex.com/emoji/px16/Ruby.png)](https://www.ruby-lang.org/en/)


## 🖥️ Setup for starting Tic Tac Toe

To get a local copy up and running follow these simple example steps.

### Prerequisites
Computer running Mac OS, Windows, or Linux Ubuntu.
Internet browser: Firefox, Google Chrome, Opera...

Have Ruby installed you can see this link for more detailed instructions [Install Ruby](https://www.theodinproject.com/courses/web-development-101/lessons/installing-ruby)

### Installation

You MUST have Ruby installed in your system. If you don't have it installed you can go this page [Install Ruby](https://www.theodinproject.com/courses/web-development-101/lessons/installing-ruby)

After installing ruby, you can download the repo or clone it (paste on the terminal) `git clone git@github.com:jcy2704/oop_ruby.git`

## 💻 Run Tic-Tac-Toe
You will need to execute the tictactoe file located inside the bin folder. If you are using Window, follow next step.

### Windows

Open the terminal and navigate to the folder using `cd path-to-folder` containing the tic-tac-toe game. Once you are inside, your terminal should look like this: User/<folder>/oop-ruby/. You can type or paste this on terminal `bin/tictactoe` to run the game.

### Mac and Linux

Most Mac and some of Linux computers come with ruby installed, but still need to verify by typing in your terminal `ruby --version` if not please go back to [Installation](#installation) section.

After verifying you have ruby installed and completing the [Installation](#installation) section, open the terminal navigate using `cd path-to-folder` containing the tic-tac-toe game and run in the terminal `bin/tictactoe` to run the game.

### Live Preview
[Tic-tac-toe](https://repl.it/@jcy2704/tic-tac-toe#bin/tictactoe.rb)

**Enjoy our project!!**

## 👥 Authors

👤 **Steven Jack Chung**

- GitHub: [@jcy2704](https://github.com/jcy2704)
- Twitter: [@yiak_](https://twitter.com/yiak_)
- LinkedIn: [Steven Jack Chung](https://linkedin.com/in/stevenjchung)

👤 **David Leonardo**

- Github: [@David Castillo](https://github.com/Fanger53)
- Twitter: [@David Castillo](https://twitter.com/DavidLe97005129)
- Linkedin: [@David Castillo](https://www.linkedin.com/in/david-castillo-61ba10b8/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/jcy2704/oop_ruby/issues).

## ⭐ Show your support

Give a ⭐️ if you like this project!

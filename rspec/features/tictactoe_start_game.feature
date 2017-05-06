

Feature: tictactoe start game

As a player
i want to start game tictactoe
so that i can win
i should see an empty grid
      ...
      ...
      ...
Scenario: start game
  Given not playing
  When I start game
  Then I should See a empty grid three rows and three columns
"""
  TicTacToe
  ...
  ...
  ...
"""

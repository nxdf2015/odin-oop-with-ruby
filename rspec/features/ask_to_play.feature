

Feature: ask to a player to select a valid cell in the grid

 the current_player is the player who should play
 each time a player select a cell
 if the game is not finish the current_player must change


Scenario: ask to player select valid cell
  Given game
  When the current_player is X
  Then I should see "player X: select a row col in the grid"
  And I should see the new grid


Scenario: the current_player change after a selection
    Given a game with the current_player
    When the current_player is X
    Then I should see "player X: select a row col in the grid"
    Then I should see the new grid
    Then the current_player become O
    Then I should see "player O: select a row col in the grid"

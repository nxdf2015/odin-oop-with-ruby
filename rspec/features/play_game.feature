

Feature: select a cell

as the  player X I select an empty cell (row ,col)  in the grid
i should see the  new grid




Scenario Outline: player  select one  cell in the grid
  Given a "<grid>"
  When I select a valid cell" <row>" "<col>"
  Then I should see the "<result>"
  

  Scenarios: player X select cell
    |grid       |row|col|result     |win    |
    |...,...,...|0  |0  |X..,...,...| false |
    |...,...,...|0  |1  |.X.,...,...|false  |
    |...,...,...|0  |2  |..X,...,...|false  |


  Scenarios: player X  Win
    |grid       |row|col|result     |win |
    |XX.,...,...|0  |2  |XXX,...,...|true|
    |X..,X..,...|2  |2  |X..,X..,X..|true|
    |...,XX.,...|1  |2  |...,XXX,...|true|
    |...,...,XX.|2  |2  |...,...,XXX|true|
    |X..,X..,...|2  |2  |X..,X..,X..|true|
    |X..,.X.,...|0  |2  |X..,.X.,..X|true|

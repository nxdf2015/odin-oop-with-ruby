# odin-oop-with-ruby

## Project: OOP with Ruby

### Project 1: TicTacToe
####  first Version [`TicTactoe`](https://github.com/nxdf2015/odin-oop-with-ruby/tree/master/tic-tac-toe)
  class Cell [`cell.rb`](https://github.com/nxdf2015/odin-oop-with-ruby/blob/master/tic-tac-toe/cell.rb)
     create a cell with three states :   
      - empty   :e  
      - player   :x :o  
                  
   
    
  class Grid [`grid.rb`](https://github.com/nxdf2015/odin-oop-with-ruby/blob/master/tic-tac-toe/grid.rb)
  create grid with cells
  - attr-accessor :grid
  - initialize(col,row)
  - valid?(col,row) : return if cell is empty
  - full? : if no cell is empty
  - win? 
  - draw : print the grid
  
  class Player [`player.rb`](https://github.com/nxdf2015/odin-oop-with-ruby/blob/master/tic-tac-toe/player.rb)
  
  class Tictactoe [`tic_tac_toe.rb`](https://github.com/nxdf2015/odin-oop-with-ruby/blob/master/tic-tac-toe/tic_tac_toe.rb)  
    - main function: play   
    g = TicTacToe.start  
    g.play
    
####

#### second version: [TictacToe-rspec](https://github.com/nxdf2015/odin-oop-with-ruby/tree/master/rspec)
      
## Project 2: Mastermind

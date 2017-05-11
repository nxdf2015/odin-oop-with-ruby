# odin-oop-with-ruby

## [Project: OOP with Ruby](https://www.theodinproject.com/courses/ruby-programming/lessons/oop)

### Project 1: TicTacToe
```

```
####  first Version [`TicTactoe`](https://github.com/nxdf2015/odin-oop-with-ruby/tree/master/tic-tac-toe)
  class Cell [`cell.rb`](https://github.com/nxdf2015/odin-oop-with-ruby/blob/master/tic-tac-toe/cell.rb)
     create a cell with three states :   
      - empty   :e  
      - player   :x :o  



  class Grid [`grid.rb`](https://github.com/nxdf2015/odin-oop-with-ruby/blob/master/tic-tac-toe/grid.rb)
  create grid with cells
  - attr-accessor :grid
  - initialize(col,row)
  - valid?(col,row) : return true if cell is empty
  - full? : if no cell is empty
  - win?
  - draw : print the grid

  class Player [`player.rb`](https://github.com/nxdf2015/odin-oop-with-ruby/blob/master/tic-tac-toe/player.rb)

  class Tictactoe [`tic_tac_toe.rb`](https://github.com/nxdf2015/odin-oop-with-ruby/blob/master/tic-tac-toe/tic_tac_toe.rb)     
   ```
      g = TicTacToe.start
      g.play
   ```

#### second version: [TictacToe-rspec](https://github.com/nxdf2015/odin-oop-with-ruby/tree/master/rspec)

[:file_folder:tictactoe](https://github.com/nxdf2015/odin-oop-with-ruby/tree/master/rspec/lib)
```
      g = TicTacToe.start
      g.loop
```



## [Project 2: Mastermind](https://github.com/nxdf2015/odin-oop-with-ruby/tree/master/mastermind)
 ![capture](https://github.com/nxdf2015/odin-oop-with-ruby/blob/master/mastermind/Capture.PNG)
 - class Code [code.rb](https://github.com/nxdf2015/odin-oop-with-ruby/tree/master/mastermind)
     compare a code with a guess and return feedback
  - [helper.rb](https://github.com/nxdf2015/odin-oop-with-ruby/blob/master/mastermind/helper.rb)
    * class Array  
      - substract
       [1,2].substract[1,2] = [0,0]
      - index_zeros
       [0,2,0,4].index_zeros = [0,2]
      - count_zeros
       [0,2,0,4].count_zeros

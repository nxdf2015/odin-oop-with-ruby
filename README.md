# odin-oop-with-ruby

## [Project: OOP with Ruby](https://www.theodinproject.com/courses/ruby-programming/lessons/oop)

### Project 1: TicTacToe
```

```
####  first Version [`TicTactoe`](https://github.com/nxdf2015/odin-oop-with-ruby/tree/master/tic-tac-toe)
```
the grid |X|.|.| is represented by an array of cell  (class Cell) 
         |.|X|.|  
         |.|.|O|
```

  **class Cell** [`cell.rb`](https://github.com/nxdf2015/odin-oop-with-ruby/blob/master/tic-tac-toe/cell.rb)
     create a cell with three states :   
      - empty   :e  
      - player   :x :o  



  **class Grid** [`grid.rb`](https://github.com/nxdf2015/odin-oop-with-ruby/blob/master/tic-tac-toe/grid.rb)
  create grid with cells

  **class Player **
  

  **class Tictactoe** [`tic_tac_toe.rb`](https://github.com/nxdf2015/odin-oop-with-ruby/blob/master/tic-tac-toe/tic_tac_toe.rb)     
   ```
      g = TicTacToe.start
      g.play
   ```

#### second version: [TictacToe-rspec](https://github.com/nxdf2015/odin-oop-with-ruby/tree/master/rspec)
```
the grid |X|.|.| is represented by an array of string ["X..",".X.","..O"]
         |.|X|.|  
         |.|.|O|
and to test if the current grid win compare each row column or diagonal with "XXX" or "OOO"     
[(3+3+2 )* 2 =  16 tests]
         |X|X|X|  |X|.|.|  |X|.|.|  |O|.|.|
         |.|.|.|  |X|.|.|  |.|X|.|  |.|O|.|
         |.|.|.|  |X|.|.|  |.|.|X|  |.|.|O|
         
 (i try TDD method in this version)    
 ```


[:file_folder:tictactoe](https://github.com/nxdf2015/odin-oop-with-ruby/tree/master/rspec/lib)
```
      g = TicTacToe.start
      g.loop
```
[spec](https://github.com/nxdf2015/odin-oop-with-ruby/tree/master/rspec/spec/tictactoe)   

use double to simulate output 
[start_game_spec.rb](https://github.com/nxdf2015/odin-oop-with-ruby/blob/master/rspec/spec/tictactoe/start_game_spec.rb)
    
```ruby
     describe "start game" do
  let(:output) {double("output").as_null_object}** 
  let(:game){Grid.new(output)} 
  context "start game" do
  it "grid when start game" do
      output.should_receive(:puts).with("\n-------\n|.|.|.|\n-------\n|.|.|.|\n-------\n|.|.|.|\n-------\n")
      game.start
    end
```   
    
use  stub to simulate input  [loop_spec.rb](https://github.com/nxdf2015/odin-oop-with-ruby/blob/master/rspec/spec/tictactoe/loop_spec.rb)      
    
```ruby
    describe "#loop" do
  let(:input){double("input")}
  let(:output){double("output").as_null_object}
  let(:game){TicTacToe.new(output,nil,nil,nil,input)}

  context "player select one cell " do
   it "player  X select cell 0,0" do
    input.stub(:gets).and_return("0 0")
    output.should_receive(:puts).with("\n-------\n|X|.|.|\n-------\n|.|.|.|\n-------\n|.|.|.|\n-------\n")
    game.loop #debug = true 
  end
  ```
    



## [Project 2: Mastermind](https://github.com/nxdf2015/odin-oop-with-ruby/tree/master/mastermind)
 ![capture](https://github.com/nxdf2015/odin-oop-with-ruby/blob/master/mastermind/Capture.PNG)
 - **class Game** [mastermind.rb](https://github.com/nxdf2015/odin-oop-with-ruby/blob/master/mastermind/mastermind.rb)
```
   game = Game.create
    game.start
```

 - _class Code_ [code.rb](https://github.com/nxdf2015/odin-oop-with-ruby/tree/master/mastermind)
     compare a code with a guess and return feedback
  
  - _class Player_[player.rb](https://github.com/nxdf2015/odin-oop-with-ruby/blob/master/mastermind/player.rb)
   <table>
   <tr>
   <td>
    <b>class Human</b> < Player <br>
    <b>class Computer</b> < Player
   </td>
   <td>
   <em>interface<em> <br>       
   guess  : void -> string <br>   
   match : string -> void      
</td>
</tr>
</table>

  - [helper.rb](https://github.com/nxdf2015/odin-oop-with-ruby/blob/master/mastermind/helper.rb)         
  
  
  
    | `class Array` |                                |
    |---------------|--------------------------------|
    |   substract  |  [1,2].substract [1,2] = [0,0]  |
    |  index_zeros | [0,2,0,4].index_zeros = [0,2]  |
    | count_zeros |  [0,2,0,4].count_zeros  = 2  |
    | number_match|  [2,1,4].number_match [1,2,5,6]  = [1,2]|
    | any_match? |  [1,2,3]any_match? [5,6,7] = true|
    | ||
    | *`class Hash`* | |
    |invert | { 1: 2 , 2: 3 , 4: 3}.invert = { 2: [1], 3: [2,4]}|
    |   |   |
    | *`class String`* |       | 
    |to_array | "12345".to_array = [1,2,3,4,5]|
    
    
    #### comparaison guess and secret    
    example :      
    + secret = [1,2,3,4]     
    guess = [5,2,4,3]    
    + secret substract guess  = [-4,0,-1,1]     
    + index_zeros [1] : _index of the digit  at the right position_      
     [0,1,2,3] - [1] = [0,2,3]= valid index  _index of the digit not at the right position_       
    + hash_guess  = { 0 => 5 , 2 => 4 , 3 => 3 }.invert = { 5=> 0 , 4 => 2 , 3=> 3}  
      hash_secret = { 0 => 1 , 2 => 3 , 3 => 4 }.invert = { 1 => 0 , 3 => 2 , 4 => 3}
    
    + hash_guess.keys & hash_secret.keys = [3,4]   digit present in guess and secret not at the right position   
    + index_present = [2,3]   index in guess of the digit not at the right position 
     
    + feedback="...."
    feedback[1] = "+"
    feedback[2]="-" feedback[3]="-"
    
    feedback = ".+--"
    
       
    todo
    [] refactoring 
       
     
    
    
    
    

 

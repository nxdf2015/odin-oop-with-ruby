Before do
  @game = TicTacToe.new
end

Given(/^a "([^"]*)"$/) do |grid|
  @game.grid = grid.split(",").map do |row| row.split("") end
  @game.current_player == :X
end

When(/^I select a valid cell"([^"]*)" "([^"]*)"$/) do |row, col|
  @game.select(row.to_i,col.to_i)

end

Then(/^I should see the "([^"]*)"$/) do |result|

  @game.result.map do |row| row.join("") end.join(",") == result
end

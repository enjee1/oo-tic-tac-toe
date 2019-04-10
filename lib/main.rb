require_relative "board"
require_relative "player"

board = Board.new
x_player = Player.new('x')
o_player = Player.new('o')


players = [x_player, o_player].shuffle
turn_index = 0
while board.empty_spaces? && !board.winner?
  puts "It is #{players[turn_index].character} turn."

  puts "What row do you want to play?"
  row_index = gets.chomp.to_i - 1

  puts "What column do you want to play?"
  col_index = gets.chomp.to_i - 1

  board.add_turn(players[turn_index].character, row_index, col_index)

  puts board.print

  turn_index = turn_index == 0 ? 1 : 0
end

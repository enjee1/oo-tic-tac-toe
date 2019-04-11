class GameTurn
  attr_reader :board, :play

  def initialize(board, player, row_index)
    @board =  board
    @player = player
    @row_index = row_index
  end
end

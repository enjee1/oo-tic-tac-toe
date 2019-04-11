require "spec_helper"

describe GameTurn do
  let(:board) { Board.new}
  let(:player) { Player.new('x') }

  it "has a board" do
    turn = GameTurn.new(board, player)
    expect(turn.board).to eq(board)
  end

  it "has a player" do
    turn = GameTurn.new(board, player)
    expect(turn.player).to eq(player)
  end

  it "has a row index" do
    GameTurn.new(board, player, 0)
  end

  it "has a column index"

  context "checking for win conditions" do
    context "horizontally" do
      it "does have a win if a row of the same player is found"
      it "does not have a win if a row is interrupted by another player"
      it "does not have a win if an unoccupied sapce is found in the row"
    end

    context "vertically" do

    end
  end
end

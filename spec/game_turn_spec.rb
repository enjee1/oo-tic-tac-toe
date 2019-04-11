require "spec_helper"

describe GameTurn do
  let(:board) { Board.new}
  let(:player) { Player.new('x') }
  let(:row_index) { 0 }
  let(:col_index) { 0 }
  let(:turn) { GameTurn.new(board, player, row_index, col_index)}

  it "has a board" do
    expect(turn.board).to eq(board)
  end

  it "has a player" do
    expect(turn.player).to eq(player)
  end

  it "has a row index" do
    expect(turn.row_index).to eq(row_index)
  end

  it "has a column index" do
    expect(turn.col_index).to eq(col_index)
  end

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

require "spec_helper"

describe Board do

  let(:three_space_board) { Board.new }
  let(:four_space_board) { Board.new(4)}
  let(:o_player) { Player.new('o') }
  let(:x_player) { Player.new('x') }

  it "can be initialized with 3 rows and columns by default" do
    expect(three_space_board.rows.size).to eq(3)
    expect(three_space_board.rows[0].size).to eq(3)
  end

  it "can be initalized with 4 rows and columns if I choose" do
    expect(four_space_board.rows.size).to eq(4)
    expect(four_space_board.rows[0].size).to eq(4)
  end

  it "prints 4 rows and columns for a 4 row board" do
    four_space_board
    board_printout =
    "- | - | - | -\n" +
    "-------------\n" +
    "- | - | - | -\n" +
    "-------------\n" +
    "- | - | - | -\n" +
    "-------------\n" +
    "- | - | - | -\n"

    expect(four_space_board.print).to eq(board_printout)
  end

  it "prints 3 rows and columns for a 3 row board" do
    three_space_board
    board_printout =
    "- | - | -\n" +
    "---------\n" +
    "- | - | -\n" +
    "---------\n" +
    "- | - | -\n"

    expect(three_space_board.print).to eq(board_printout)
  end

  it "places a player on the board" do
    three_space_board.add_turn(x_player, 0, 0)
    board_printout =
    "x | - | -\n" +
    "---------\n" +
    "- | - | -\n" +
    "---------\n" +
    "- | - | -\n"

    expect(three_space_board.print).to eq(board_printout)
  end

  it "places a player on the center of the board" do
    three_space_board.add_turn(o_player, 1, 1)

    board_printout =
    "- | - | -\n" +
    "---------\n" +
    "- | o | -\n" +
    "---------\n" +
    "- | - | -\n"

    expect(three_space_board.print).to eq(board_printout)
  end

  it "has empty spaces when created" do
    expect(three_space_board.empty_spaces?).to eq(true)
  end

  it "has no empty spaces when completely occupied" do
    three_space_board
    3.times do |index|
      3.times do |col_index|
        three_space_board.add_turn(x_player, index, col_index)
      end
    end

    expect(three_space_board.empty_spaces?).to eq(false)
  end
end

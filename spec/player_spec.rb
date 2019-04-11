require "spec_helper"


describe Player do
  it "has a x character" do
    player = Player.new('x')
    expect(player.character).to eq('x')
  end

  it "has a o character" do
    player = Player.new('o')
    expect(player.character).to eq('o')
  end
end

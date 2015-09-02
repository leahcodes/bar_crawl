require('spec_helper')

describe('#initialize') do
  it('creates new game object, initializes first values') do
    test_game = Game.create({:happiness => 0, :stop_id => 1, :energy => 0, :money => 80, :name => "Jan"})
    expect(test_game.happiness).to(eq(0))
  end
end

describe('#lose') do
  it('checks the losing possibility') do
    test_game = Game.create({:happiness => 50, :stop_id => 1, :energy => 0, :money => 80, :name => "Jan"})
    expect(test_game.lose).to(eq(0))
  end
end

describe('#win') do
  it('checks the winning possibility') do
    test_game = Game.create({:happiness => 50, :stop_id => 20, :energy => 20, :money => 80, :name => "Jan"})
    expect(test_game.lose).to(eq(4))
    expect(test_game.win_stop).to(eq(true))
  end
end

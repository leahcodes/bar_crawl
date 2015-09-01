require('spec_helper')

describe('#initialize') do
  it('creates new game object, initializes first values') do
    test_game = Game.create({:happiness => 0, :stop_id => 1, :random_id => 0, :energy => 0, :money => 80, :name => "Jan"})
    expect(test_game.happiness).to(eq(0))
  end

end

require('spec_helper')

describe('#new_random_event') do
  it('returns a new random event, fuck yeah.') do
    test_event = RandomEvent.new_random_event
    expect(test_event.bar).to be_a(String)
  end
end

require('styling')
require('spec_helper')

describe(Styling) do
  describe("#status_bar") do
    it('will make a status bar for you happily') do
    test_bar = Styling.new
    expect(test_bar.status_bar(2)).to(eq("words"))
  end
end
end

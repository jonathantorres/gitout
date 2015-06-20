require 'turnout'

RSpec.describe Turnout do
  it "fetches user data from github" do
    turnout = Turnout.new

    expect(turnout.github 'jonathantorres').to eq('Github data from jonathantorres parsed.')
  end
end

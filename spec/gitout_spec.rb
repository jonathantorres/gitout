require 'gitout'

RSpec.describe Gitout do
  it "fetches user data from github" do
    data = Gitout.new.github('jonathantorres')

    expect(data[:commits]).to eq(100)
    expect(data[:additions]).to eq(50)
    expect(data[:deletions]).to eq(30)
  end
end

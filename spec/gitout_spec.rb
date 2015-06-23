require 'gitout'

RSpec.describe Gitout do
  it "fetches user data from github" do
    github = double('github')
    repo = double('repo')
    commit = double('commit')
    commits = [commit, commit]

    allow(github).to receive(:repositories).once.with('jonathantorres').and_return([repo, repo])
    allow(github).to receive(:commits).twice.and_return(commits, commits)
    allow(github).to receive(:commit).exactly(4).times.and_return(commit, commit, commit, commit)

    data = Gitout.new.github('jonathantorres')

    expect(data[:commits]).to eq(100)
    expect(data[:additions]).to eq(50)
    expect(data[:deletions]).to eq(30)
  end
end

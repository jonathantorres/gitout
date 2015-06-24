require 'gitout'

RSpec.describe Gitout do
  it "fetches user data from github" do
    github = double('github')
    repo = double('repo', :name => 'some-repo')
    commit = double('commit', :sha => 'SOMESHA', :stats => { additions: 10, deletions: 20 })
    commits = [commit, commit]

    expect(github).to receive(:repositories).once.with('jonathantorres').and_return([repo, repo])
    expect(github).to receive(:commits).twice.and_return(commits, commits)
    expect(github).to receive(:commit).exactly(4).times.and_return(commit, commit, commit, commit)

    gitout = Gitout.new(github, 'jonathantorres')
    data = gitout.github

    expect(data[:commits]).to eq(4)
    expect(data[:additions]).to eq(40)
    expect(data[:deletions]).to eq(80)
  end
end

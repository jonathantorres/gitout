require 'gitout/github'

RSpec.describe GitHub do
  it "fetches user repositories" do
    expect(Octokit).to receive(:repositories).once.with('jonathantorres').and_return([])
    repos = GitHub.new.repositories('jonathantorres')
    expect(repos).to match_array([])
  end

  it "fetches specified user commits" do
    expect(Octokit).to receive(:commits_on).once.with('jonathantorres/some-repo', '2015-10-10', 'master').and_return([])
    commits = GitHub.new.commits('jonathantorres', 'some-repo', '2015-10-10')
    expect(commits).to match_array([])
  end

  it "fetches a specified single commit" do
    expect(Octokit).to receive(:commit).once.with('jonathantorres/some-repo', 'SOMESHA').and_return({})
    commit = GitHub.new.commit('jonathantorres', 'some-repo', 'SOMESHA')
    expect(commit).to be_instance_of(Hash)
  end
end

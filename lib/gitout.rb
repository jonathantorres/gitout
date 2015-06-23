require 'gitout/github'

class Gitout

  def initialize()
    @github = GitHub.new
    @repositories = []
    @total_commits = 0
    @total_additions = 0
    @total_deletions = 0
  end

  def github(username)
    @username = username

    fetch_commits

    data = {
      commits: @total_commits,
      additions: @total_additions,
      deletions: @total_deletions,
    }

    data
  end

  private
  def fetch_commits
    @repositories = @github.repositories(@username)
    @repositories.each do |repository|
      puts "Fetching commits on #{repository.name}..."
      commits = @github.commits(@username, repository.name, '2015-06-10')
      commits.each do |commit|
        @total_commits += 1
        commit_data = @github.commit(@username, repository.name, commit.sha)
        @total_additions += commit_data.stats[:additions]
        @total_deletions += commit_data.stats[:deletions]
      end
    end
  end
end

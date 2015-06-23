require 'octokit'
require 'gitout/credentials'

class GitHub

  def initialize
    Octokit::Client.new({
      client_id: Credentials::CLIENT_ID,
      client_secret: Credentials::CLIENT_SECRET
    })
  end

  # get user repositories
  def repositories(user)
    Octokit.repositories(user)
  end

  # Get user commits on a repository on a specific date
  # date format: 'Y-M-D'
  def commits(user, repository, date)
    Octokit.commits_on("#{user}/#{repository}", date, 'master')
  end

  # Get single commit data
  def commit(user, repository, sha)
    Octokit.commit("#{user}/#{repository}", sha)
  end
end

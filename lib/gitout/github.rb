require 'octokit'
require 'gitout/credentials'

class GitHub

  def initialize(client)
    @client = client
  end

  # get user repositories
  def repositories(user)
    @client.repositories(user)
  end

  # Get user commits on a repository on a specific date
  # date format: 'Y-M-D'
  def commits(user, repository, date)
    @client.commits_on("#{user}/#{repository}", date, 'master')
  end

  # Get single commit data
  def commit(user, repository, sha)
    @client.commit("#{user}/#{repository}", sha)
  end
end

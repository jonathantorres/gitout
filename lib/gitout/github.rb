require 'octokit'

class GitHub

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

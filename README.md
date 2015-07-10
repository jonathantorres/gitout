# Gitout
[![Build Status](https://travis-ci.org/jonathantorres/gitout-cli.svg?branch=master)](https://travis-ci.org/jonathantorres/gitout)

Check how much code you pushed to GitHub so far today.

### Installation
Install via RubyGems
```bash
gem install gitout
```

### How to use
Once installed just run
```bash
gitout {your-github-username}
```

Gitout will read every public repository that you own and count how many commits you pushed today. Including the lines of code added and deleted.
```bash
GitHub data for 'jonathantorres'
Commits: 10
Lines of code added: 44
Lines of code deleted: 12
```
### License
MIT

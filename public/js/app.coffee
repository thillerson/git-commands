$ ->
  commands = [
    { name: "help", desc: "Get help on a git command" },
    { name: "init", desc: "Initializes a Git Repo" },
    { name: "commit", desc: "Commits changes from the index to a new commit" },
    { name: "add", desc: "Add a file to the git index" },
    { name: "rm", desc: "Stage a file for deletion in the next commit" },
    { name: "clone", desc: "Clone a remote repository" },
    { name: "log", desc: "View changes to a repository. Many options" },
    { name: "whatchanged", desc: "View what changed in given commits" },
    { name: "remote", desc: "Configure remotes" },
    { name: "checkout", desc: "Checkout a specific commit or branch" },
    { name: "config", desc: "Configure different settings for Git" },
    { name: "tag", desc: "Manage tags - named references to given commits" },
    { name: "branch", desc: "Configure branches" },
    { name: "push", desc: "Push changes to a remote" },
    { name: "pull", desc: "Fetch and merge changes from a remote" },
    { name: "fetch", desc: "Download changes from a remote" },
    { name: "reset", desc: "Set the index and working tree to a certain state, given different parameters" },
    { name: "revert", desc: "Commit the reverse of a given commit" },
    { name: "cherry-pick", desc: "Commit the same contents as a given commit to the current branch" },
    { name: "stash", desc: "Place unstaged changes in the git stash - a temporary repository-like holder of uncommited changes" },
    { name: "merge", desc: "Merge the changes from a given branch to the current branch" },
    { name: "rebase", desc: "Reparent a commit or commits from one commit to another" },
    { name: "reflog", desc: "View the log of all the times refs were moved - very important to recovering from drastic changes" },
    { name: "diff", desc: "View a universal diff of the changes on the working tree compared to the repo" },
    { name: "blame", desc: "See who changed what line in a given file when and in what commit" },
    { name: "bisect", desc: "Begin a git workflow to help determine when a bug was introduced to the repo" },
    { name: "fsck", desc: "Git file system check" }
  ]

  viewModel = {
    commands: ko.observableArray commands
    query: ko.observable ''

    search: (value) ->
      viewModel.commands.removeAll()
      viewModel.commands.push(command) for command in commands when command.name.toLowerCase().indexOf(value.toLowerCase()) >= 0
  }

  viewModel.query.subscribe viewModel.search
  ko.applyBindings viewModel


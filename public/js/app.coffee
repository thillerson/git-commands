$ ->
  commands = [
    { name: "init", desc: "Initializes a Git Repo" },
    { name: "commit", desc: "Commits changes from the index to a new commit" }
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


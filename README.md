# gitplus

Generic tools and instructions for making it easier to work with git. Clone this repo somewhere on your machine.

## Good links:

* https://git-scm.com/documentation
* http://ohshitgit.com/

## Custom commands

To use these, you need to add them to your $PATH. Add something like this to your `~/.profile` or `~/.bash_profile` or whatever:

```
export PATH=$PATH:<path/to/gitplus>/commands
```

Once added, you'll probably need to source your profile file or start a new terminal window. Then you'll have access to the following commands.

**Note: git plus commands will automatically use the repo's default branch if a specific branch is not specified.**

#### git plus

Run **git plus upgrade** to easily pull the latest of this repo's origin/default branch to your machine.

**git plus help** will cat the contents of this README

#### git start

Starts a branch.

```shell
# start a branch (off repo default branch by default)
$ git start FAD-1234

# start a branch off main, as specified
$ git start FAD-1234 main
```

#### git finish

Does a --no-ff merge to default branch.

Specify "push" as the last argument to auto-push merged branch(es).

```shell
# Merge FAD-1234 to default branch
$ git finish

# Merge to default branch and push merged branch to origin
$ git finish push
```

#### git update

Merges default branch into your current branch.

Specify "rebase" to rebase the changes rather than merge them.

```shell
# Merge default branch into your branch
$ git update

# Rebase default branch into your branch
$ git update rebase
```

#### git in

List commits on your current branch in the `origin` remote that aren't present locally.

```shell
$ git in
```

#### git out

List commits on your current branch locally that are not in the `origin` remote.

```shell
$ git out
```

#### git heads

lol nah jk

#### git open

Opens the current GitHub repo in your browser. No auth required because the browser does auth for you.

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

#### git plus

Run **git plus upgrade** to easily pull the latest of this repo's origin/master branch to your machine.

**git plus help** will cat the contents of this README

#### git start

Sort of like "flow <type> start <name>", but slightly different just to be confusing.

Starts a `type/name` branch, usually a feature or hotfix, and starts from the correct starting branch for you.

```shell
# start branch (off of master)
$ git start FAD-1234

#### git finish

Does a --no-ff merge to master (if hotfix) and develop. Will also work in repos that don't have a develop
branch by merging to master by default.

Specify "push" as the last argument to auto-push merged branch(es).

```shell
# Merge hotfix/FAD-1234 to master and develop
$ git finish

# Merge feature/FAD-1234 to develop only
$ git finish

# Merge feature or hotfix and push merged branch(es) to origin
$ git finish push

# Merge whatever/FAD-1234 to master and develop (specify type is hotfix)
$ git finish hotfix

# Merge other branch and push merged branch(es) to origin
$ git finish hotfix push
```

#### git promote

Merges develop into master locally, using a --no-ff merge to create an explicit merge commit.

Specify "push" as the last argument to auto-push master after merge.

```shell
# Merge develop to master
$ git promote

# Also push master to origin
$ git promote push
```

#### git update

Merges master or develop into your current branch depending on your branch type and if there is a develop branch available.  It will also merge master into develop if on the develop branch.

Specify "rebase" to rebase the changes rather than merge them.

```shell
# Merge develop or master into your branch
$ git update

# Rebase develop or master into your branch
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

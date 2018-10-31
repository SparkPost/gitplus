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

Pulls from origin and starts a branch from master named `name`. 

```shell
# start branch (off of master)
$ git start FAD-1234

#### git finish

Does a --no-ff merge to master.

Specify "push" as the last argument to auto-push merged branch.

```shell
# Merge FAD-1234 to master
$ git finish

# Merge current branch to master and push to origin
$ git finish push

```

#### git update

Merges master into your current branch.

Specify "rebase" to rebase the changes rather than merge them.

```shell
# Merge master into your branch
$ git update

# Rebase master into your branch
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

#### git open

Opens the current GitHub repo in your browser. No auth required because the browser does auth for you.

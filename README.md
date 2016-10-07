# gitplus

Generic tools and instructions for making it easier to work with git. Clone this repo somewhere on your machine.

## Custom commands

To use these, you need to add them to your $PATH. Add something like this to your `~/.profile` or `~/.bash_profile` or whatever:

```
export PATH=$PATH:<path/to/gitplus>/commands
```

Once added, you'll probably need to source your profile file or start a new terminal window. Then you'll have access to the following commands.

#### git start

Sort of like "flow <type> start <name>", but slightly different just to be confusing.

Starts a `type/name` branch, usually a feature or hotfix, and starts from the correct starting branch for you.

```shell
# start a hotfix (off of master by default)
$ git start hotfix FAD-1234

# start a feature (off of develop by default)
$ git start feature FAD-1234

# start whateveryouwant off of a specified branch
$ git start whatever FAD-1234 master
```

#### git finish

Does a --no-ff merge to master (if hotfix) and develop.

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

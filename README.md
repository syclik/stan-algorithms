# Reimplementation of Stan algorithms

This project is a collaborative effort to rewrite the Stan algorithms.


The goals we have are to:

1. tbd
2. tbd


If you'd like to join, please find us on Discourse (FIXME: more details).

We are reimplementing the algorithms in [Stan v2.28.2](https://github.com/stan-dev/stan/tree/v2.28.2) (`4383f846f`). Although the algorithms code does not change very quickly, it's good to have a target version we are implementing against.


## Setup

```
./setup.sh
```

There's a script for one-time setup. This will:

1. Update the git submodules for Stan.
2. Download the appropriate version of `stan/bin/stanc` that is compatible with this version of Stan.

Once this script is run, the tests can run.

### Git Submodule for Stan v2.28.2

The `stan` source code is included as a git submodule located in the `stan/` folder.


## Testing

```
./test.sh
```

Currently this runs the services tests in the Stan submodule.


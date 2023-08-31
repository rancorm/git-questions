![Cover Image](cover.jpg)

Illustration by [Muhammad Ribkhan](https://www.vecteezy.com/members/khan-zein554159)

# Git Questions

An extensive collection of meticulously curated Git questions and answers. Concepts like branching, merging, and committing to advanced topics such as rebasing, cherry-picking, and submodules, we've got you covered.

## Contribute

Pull requests are welcome.

## Table of Contents

- [Git Questions](#git-questions)
  - [Setting Up](#setting-up)
  - [Basics](#basics)
  - [Workflow](#workflow)
  - [Branch & Merge](#branch--merge)
  - [Collaboration & Remote Repositories](#collaboration--remote-repositories)
  - [Advanced Topics](#advanced-topics)
  - [Best Practices](#best-practices)
  - [Tools & Extensions](#tools--extensions)
  - [Tips & Troubleshooting](#tips--troubleshooting)
  - [Continuous Integration & Deployment](#continuous-integration--deployment)
  - [Security & Access Control](#security--access-control)

## Setting Up

To make copy and pasting easier, set the environment variable `GIT_URL` and friends to their respective
values.

Example:

```
export GIT_URL=https://github.com/jcormir/git-questions.git
export GIT_BRANCH=awesome-branch
export GIT_TAG=v1.0
export GIT_COMMIT=c8e491e
```

## Basics

Setup new repostories, clone existing ones, and just getting to know Git.

### Create a new repository

Create an empty Git repository or reinitialize an existing one.

```
git init
```

## Branch & Merge

Whether you're working by yourself or on a team, you should have a repository work flow
that involves merging branches. Feature branches, long term release branches, etc.

### Branch

New local branch based on HEAD.

```
git branch $GIT_BRANCH
```

### Branch from an existing branch

New local branch from existing branch.

```
git branch $GIT_BRANCH <base-branch>
```

### Branch from a specific commit or tag

If you want to start your new local branch based on a specific commit or tag, then
you can provide the commit hash or tag name as the starting point.

```
git branch $GIT_BRANCH $GIT_COMMIT
```

### Branch from a remote repository

After working on your new local branch for some time, you might want to publish it in your
remote repository, to share it with your team:

```
git push -u origin $GIT_BRANCH
```

The `-u` or `--set-upstream` tells Git to establish a tracking reference, which argument-less **git-pull** and other commands
make use.

## Workflow
## Collaboration & Remote Repositories
## Advanced Topics

Rebasing, cherry-picking, and managing submodules.

### Clone repository recursively

Clone a repository and submodules. *2.13+*

```
git clone --recurse-submodules $GIT_URL
```

## Best Practices

### Commit Messages

Commit messages should being with a short description of 50 character limit on the first line. Followed
by a single blank line with each following line a description of the changes in the commit.

## Tools & Extensions
## Tips & Troubleshooting

## Continuous Integration & Deployment

Shallow clones aren't recommended for developers.

### Shallow clone

Perform a shallow clone when the repository history isn't a requirement and the clone with be
discarded.

```
git clone --depth=1 $GIT_URL
```

### Shallow clone a specific branch

Perform a shallow clone when 

```
git clone --depth=1 --single-branch --branch=$GIT_BRANCH $GIT_URL
```

## Security & Access Control

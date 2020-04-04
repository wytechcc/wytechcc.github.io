# ProjectChecklists [![github pages](https://github.com/wytechcc/wytechcc.github.io/workflows/Github%20Pages/badge.svg)](https://github.com/wytechcc/wytechcc.github.io/actions?query=workflow%3A%22Github+Pages%22)
[Documentation] for the WYTechCC volunteers to prevent duplication
& repeating ourselves.

This is no replacement for the main website, [wytechcc.com](https://wytechcc.com)

This is not a good place for todos, use Github Issues, Github Projects, or Trello to manage & assign those.

## How You Can Help Document things
For right now, edit the markdown files in `src/` with any checklists you have. Or, ping
@cwhitingwy on slack.

If you don't have commit access yet, open a github issue with the checklist you'd like.

The documentation KanBan board (where we track todos) is [here](https://github.com/wytechcc/wytechcc.github.io/issues)



# Beginners
* sign up for github
* click the pencil icon next to the file you want to edit in our repository

# Intermediate
* install atom
* clone the repository locally
* view changes in the git tab

# Advanced
* Download [mdbook-linkcheck](https://github.com/Michael-F-Bryan/mdbook-linkcheck/releases) and [mdbook](https://github.com/rust-lang/mdBook/releases)


## How To Use This
A Makefile is used for local development. We now have a
github action setup, so any successful build to `master`
deploys to `gh-pages`. Hooray, CI/CD.

[Documentation]: https://wytechcc.github.io/

### Locally
```
# windows users: download the setup file at https://rustup.rs/
# linux users:
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# install mdbook
cargo install mdbook mdbook-linkcheck
# install make (if you haven't already) for easy scripted building
# build & run
make serve
```
### Via Docker
```
# install docker: https://docs.docker.com/install/
docker build -t hello .
# for just the page:
docker run -p 3000:3000 -p 3001:3001 -v .:/build hello
# for live changes:
docker run -p 3000:3000 -p 3001:3001 -v $pwd:/build hello
```

## Pushing to the `master` branch
> since this is an org page, it uses `master` instead of `gh-pages`.
Note that because of the installed github action, all
changes to gh-pages you push, will be overwritten by
the next **successful** push to source.
(`make serve-docker` and `make serve-docker-live` are shortcuts, but they won't edit your local master branch).

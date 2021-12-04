# da-vislib

[![pypi](https://img.shields.io/pypi/v/da-vislib.svg)](https://pypi.org/project/da-vislib/)
[![python](https://img.shields.io/pypi/pyversions/da-vislib.svg)](https://pypi.org/project/da-vislib/)
[![Build Status](https://github.com/itera/da-vislib/actions/workflows/dev.yml/badge.svg)](https://github.com/itera/da-vislib/actions/workflows/dev.yml)
[![codecov](https://codecov.io/gh/itera/da-vislib/branch/main/graphs/badge.svg)](https://codecov.io/github/itera/da-vislib)



Skeleton for D&A's new visualizations library.


* Documentation: <https://itera.github.io/da-vislib>
* GitHub: <https://github.com/itera/da-vislib>
* PyPI: <https://pypi.org/project/da-vislib/>
* Free software: MIT


## Features

* TODO


## Installation
`pip install da-vislib`


## For developers
Requirements:
- pyenv (with python3)
- poetry
- make (optional)


### Set up environment:
Poetry will create its own virtualenv isolated from your system and install the dependencies in it. We installed extra dependency need by developer with -E {group} options, such as documentation build tools, lint, formatting and test tools etc.
```
poetry install -E doc -E dev -E test
```
optionally, if make is installed set up the environment with '`make env`'


### Deploy checklist (for every release):
1. Make some pull requests, merge all changes from feature branch to master/main.
2. Update CHANGELOG.md manually. Make sure it follows the [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) standard. Be noticed that GitHub workflow will read changelog and extract release notes automatically.
3. Commit the changelog changes:
   ```
   1. git add CHANGELOG.md
   2. git commit -m "Changelog for upcoming release 0.1.1."
   ```
4. Update version number and automatically create a commit, tag (can also be patch or major):
   ```
   poetry run bump2version minor
   ```
5. Run local tests for insurance:
   ```
   poetry run tox
   ```
6. Push these commits to main:
   ```
   git push
   ```
   Before proceeding to the next step, please check workflows triggered by this push have passed.
7. Push the tags (created by bump2version) to main, creating the new release on both GitHub and PyPI:
   ```
   git push --tags
   ```
   Only tag name started with 'v'(lower case) will leverage GitHub release workflow.
8. Check the PyPI listing page to make sure that the README, release notes, and roadmap display properly. If tox test passed, this should be ok, since we have already run twine check during tox test.
9. Update documentation:
   ```
   mkdocs gh-deploy
   ```


## Credits

This package was created with [Cookiecutter](https://github.com/audreyr/cookiecutter) and the [waynerv/cookiecutter-pypackage](https://github.com/waynerv/cookiecutter-pypackage) project template.

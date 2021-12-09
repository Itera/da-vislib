# Contributing

Contributions are welcome, and they are greatly appreciated! Every little bit
helps, and credit will always be given.

You can contribute in many ways:

## Types of Contributions

### Report Bugs

Report bugs at [GitHub Issues](https://github.com/itera/da-vislib/issues).

If you are reporting a bug, please include:

* Your operating system name and version.
* Any details about your local setup that might be helpful in troubleshooting.
* Detailed steps to reproduce the bug.

### Fix Bugs

Look through the GitHub issues for bugs. Anything tagged with "bug" and "help
wanted" is open to whoever wants to implement it.

### Implement Features

Look through the GitHub issues for features. Anything tagged with "enhancement"
and "help wanted" is open to whoever wants to implement it.

### Write Documentation

da-vislib could always use more documentation, whether as part of the
official da-vislib docs, in docstrings, or even on the web in blog posts,
articles, and such.

### Submit Feedback

The best way to send feedback is to file an issue at [GitHub Issues](https://github.com/itera/da-vislib/issues).

If you are proposing a feature:

* Explain in detail how it would work.
* Keep the scope as narrow as possible, to make it easier to implement.
* Remember that this is a volunteer-driven project, and that contributions
  are welcome :)

## Get Started!

Ready to contribute? Here's how to set up `da-vislib` for local development.

1. Fork the `da-vislib` repo on GitHub.
2. Clone your fork locally

    > ``` bash
    > git clone git@github.com:your_name_here/da-vislib.git
    > ```

3. Ensure [Poetry](https://python-poetry.org/docs/) and
   [Pyenv](https://github.com/pyenv-win/pyenv-win) is installed
   (see this [section](#installing-pyenv-and-poetry) for instructions). Skip if already installed.

4. Install dependencies and start your virtualenv:

    > ``` bash
    > poetry install -E test -E doc -E dev
    > ```

5. Create a branch for local development:

    > ``` bash
    > git checkout -b name-of-your-bugfix-or-feature
    > ```

    Now you can make your changes locally.

6. When you're done making changes, check that your changes pass the
   tests, including testing other Python versions, with tox:

    > ``` bash
    > poetry run tox
    > ```

7. Commit your changes and push your branch to GitHub:

    > ``` bash
    > git add .
    > git commit -m "Your detailed description of your changes."
    > git push origin name-of-your-bugfix-or-feature
    > ```

8.  Submit a pull request through the GitHub website.

## Pull Request Guidelines

Before you submit a pull request, check that it meets these guidelines:

1. The pull request should include tests.
2. If the pull request adds functionality, the docs should be updated. Put
   your new functionality into a function with a docstring, and add the
   feature to the list in README.md.
3. The pull request should work for Python 3.6, 3.7, 3.8 and 3.9. Check
   [GitHub Actions](https://github.com/itera/da-vislib/actions)
   and make sure that the tests pass for all supported Python versions.

## Semantic Commit Messages Guidelines

The Conventional Commits specification is a lightweight convention on top of commit messages.
It provides an easy set of rules for creating an explicit commit history;
which makes it easier to write automated tools on top of.

Format: `<type>(<scope>): <subject>`

`<scope>` is optional (ie. <parser>, <logging>, <langugage>)

### Example

```
feat: add hat wobble
^--^  ^------------^
|     |
|     +-> Summary in present tense.
|
+-------> Type: chore, docs, feat, fix, refactor, style, or test.
```

More Examples:

- `feat`: (new feature for the user, not a new feature for build script)
- `fix`: (bug fix for the user, not a fix to a build script)
- `docs`: (changes to the documentation)
- `style`: (formatting, missing semi colons, etc; no production code change)
- `refactor`: (refactoring production code, eg. renaming a variable)
- `test`: (adding missing tests, refactoring tests; no production code change)
- `chore`: (updating grunt tasks etc; no production code change)
- `revert`: (reverting a commit)

References:

- [https://www.conventionalcommits.org/](https://www.conventionalcommits.org/)
- [https://seesparkbox.com/foundry/semantic_commit_messages](https://seesparkbox.com/foundry/semantic_commit_messages)
- [http://karma-runner.github.io/1.0/dev/git-commit-msg.html](http://karma-runner.github.io/1.0/dev/git-commit-msg.html)


## Tips

> ``` bash
> poetry run pytest tests/test_da_vislib.py
> ```

To run a subset of tests. Or

> ``` bash
> poetry run python -m pytest --pyargs da_vislib tests/
> ```

To run all tests.

## Deploying

A reminder for the maintainers on how to deploy. For more in depth instructions,
see the 'Release Checklist'.
Make sure all your changes are committed (including an entry in CHANGELOG.md).
Then run:

> ``` bash
> poetry run bump2version patch # possible: major / minor / patch
> git push
> git push --tags
> ```

GitHub Actions will then deploy to PyPI if tests pass.

## Installing PyEnv and Poetry

TODO: add instructions for linux and windows

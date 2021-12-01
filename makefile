sources = da_vislib

ifeq ($(OS),Windows_NT)
RM =  @pwsh -c Remove-Item -Recurse
ifdef ComSpec
SHELL := $(ComSpec)
endif
ifdef COMSPEC
SHELL := $(COMSPEC)
endif
else
RM = rm -rf
endif

.PHONY: test format lint unittest coverage pre-commit clean
test: format lint unittest

format:
	isort $(sources) tests
	black $(sources) tests

lint:
	flake8 $(sources) tests
	mypy $(sources) tests

unittest:
	pytest

coverage:
	pytest --cov=$(sources) --cov-branch --cov-report=term-missing tests

pre-commit:
	pre-commit run --all-files

clean:
	@echo Clean project
	-$(RM) .coverage, coverage.xml
	-$(RM) .mypy_cache, .pytest_cache
	-$(RM) .tox, dist, site

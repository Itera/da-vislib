#!/usr/bin/env python
"""Tests for `da_vislib` package."""

import pytest


@pytest.fixture
def response():
    """Sample pytest fixture.

    See more at: http://doc.pytest.org/en/latest/fixture.html
    """
    # import requests
    # return requests.get('https://github.com/audreyr/cookiecutter-pypackage')


def test_content(response):
    """Sample pytest test function with the pytest fixture as an argument."""
    # from bs4 import BeautifulSoup
    # assert 'GitHub' in BeautifulSoup(response.content).title.string
    del response


def test_hello_world():
    """Test that the hello world function works."""
    import da_vislib.da_vislib as davis

    x = davis.hello_world()
    assert type(x) == str
    assert x == 'Hello World!'

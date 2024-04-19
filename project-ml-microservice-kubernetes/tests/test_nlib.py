"""pytest tests for library"""

import pytest
import sys
sys.path.append("..")
from nlib import csvops

def func(x):
    return x + 1


def test_answer():
    assert func(3) == 5
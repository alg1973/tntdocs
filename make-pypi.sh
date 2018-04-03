#!/bin/sh

cd tarantool-python
python setup.py sdist bdist_wheel --universal
twine upload dist/*

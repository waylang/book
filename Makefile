# vim: filetype=make
# Copyright (C) 2016-2018 Philip H. Smith

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

SHELL := /bin/bash

ALL :=
TEST :=

.PHONY: all
all:

include */build.mk

all: $(ALL)

.PHONY: test
test: $(TEST)

.PHONY: continuous-integration
continuous-integration: test

.PHONY: clean
clean:
	-rm -r build

build:
	mkdir -p build

$(ALL): | build

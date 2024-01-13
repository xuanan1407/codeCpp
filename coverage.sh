#!/bin/sh


lcov --capture --directory build --output-file coverage.info

lcov -r coverage.info "*/test/*" -o coverage.info
lcov -r coverage.info "*/usr/*" -o coverage.info

genhtml coverage.info --output-directory coverage-html

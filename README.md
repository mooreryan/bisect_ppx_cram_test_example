# bisect_ppx + cram tests example

[![Build and test](https://github.com/mooreryan/bisect_ppx_cram_test_example/actions/workflows/build_and_test.yml/badge.svg?branch=main)](https://github.com/mooreryan/bisect_ppx_cram_test_example/actions/workflows/build_and_test.yml) [![Coverage Status](https://coveralls.io/repos/github/mooreryan/bisect_ppx_cram_test_example/badge.svg?branch=main)](https://coveralls.io/github/mooreryan/bisect_ppx_cram_test_example?branch=main)

Example project with coverage and cram tests.

Generate coverage report with `make test_coverage`. The resulting html file will be in `_coverage/index.html`.

Check out the `.github` folder for the GitHub CI action that builds the library, runs the tests, and sends the coverage report to Coveralls. The GitHub uses [just](https://just.systems/man/en/) for variety.

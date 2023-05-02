name := "BisectCramExample"
cov_dir := "/tmp" / name
cov_file := cov_dir / name

build:
    dune build

clean:
    dune clean

test:
    dune runtest

test_coverage:
    #!/usr/bin/env bash
    set -euxo pipefail
    if [ -d {{ cov_dir }} ]; then rm -r {{ cov_dir }}; fi
    mkdir -p {{ cov_dir }}
    BISECT_FILE={{ cov_file }} dune runtest --no-print-directory \
      --instrument-with bisect_ppx --force
    bisect-ppx-report html --coverage-path {{ cov_dir }}
    bisect-ppx-report summary --coverage-path {{ cov_dir }}

send_coverage: clean test_coverage
    bisect-ppx-report send-to Coveralls --coverage-path {{ cov_dir }}

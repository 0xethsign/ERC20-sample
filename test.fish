#!/usr/bin/env fish

set -x DAPP_SOLC /usr/bin/solc
set -x DAPP_BUILD_OPTIMIZE 1
set -x DAPP_BUILD_OPTIMIZE_RUNS 99999

#dapp test --verbosity 3
dapp debug
#dapp build

#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/tatsumima/galapagos/mac_addr_filter_v4/solution1/.autopilot/db/a.g.bc ${1+"$@"}

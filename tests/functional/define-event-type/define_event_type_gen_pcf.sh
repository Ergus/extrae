#!/bin/bash

rm -fr TRACE.sym TRACE.mpits set-0

EXTRAE_ON=1 ./define_event_type_gen_pcf
../../../src/merger/mpi2prv -f TRACE.mpits -e .libs/define_event_type_gen_pcf -o define_event_type_gen_pcf.prv

# Actual comparison
diff reference.pcf define_event_type_gen_pcf.pcf

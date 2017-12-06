SHELL=/bin/bash

# Matrix dimensions.
N=3000
M=3000

CC=icc

# Compiler optimization level.
OPT_LEVEL=-O0

##########################################
# DO NOT MODIFY ANYTHING BELOW THIS LINE #
# DO NOT MODIFY ANYTHING BELOW THIS LINE #
# DO NOT MODIFY ANYTHING BELOW THIS LINE #
# DO NOT MODIFY ANYTHING BELOW THIS LINE #
##########################################

# Used for checking the results.
ERROR_THRESHOLD=1e-4

# The papi library location.
PAPI_LIB_DIR=/usr/local/apps/papi/5.4.1/lib
PAPI_INC_DIR=/usr/local/apps/papi/5.4.1/include

# Common program arguments.
COMMON_PROG_ARGS=-DN=$(N) -DM=$(M) -std=c99 $(OPT_LEVEL) -DERROR_THRESHOLD=$(ERROR_THRESHOLD)

# Program arguments for cc.
cc_PROG_ARGS=$(COMMON_PROG_ARGS)

# Compilation command for cc, no PAPI.
cc_NOPAPI_CC=$(CC) -DNOPAPI $(cc_PROG_ARGS)

cc_PAPI_CC=$(CC) -I${PAPI_INC_DIR} -L$(PAPI_LIB_DIR) -lpapi $(cc_PROG_ARGS)

all: cc_no_papi cc_with_papi

cc_no_papi: *.c
	$(cc_NOPAPI_CC) *.c -o cc_no_papi_$(N)_$(M)

cc_with_papi: *.c
	$(cc_PAPI_CC) *.c -o cc_with_papi_$(N)_$(M)

clean:
	rm -f *.out *.o *.optrpt cc_no_papi_* cc_with_papi_*

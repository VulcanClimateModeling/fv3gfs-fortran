# This is an automake file for the test_fms/monin_obukhov directory of the FMS
# package.

# uramirez, Ed Hartnett

LOG_DRIVER = env AM_TAP_AWK='$(AWK)' $(SHELL) \
             $(top_srcdir)/tap-driver.sh

# Set srcdir as evironment variable to be reference in the job script
TESTS_ENVIRONMENT = srcdir="$(top_srcdir)"

# Find the needed mod files.
AM_CPPFLAGS = -I${top_builddir}/monin_obukhov -I${top_builddir}/fms \
-I${top_builddir}/mpp

# Link to the FMS library.
LDADD = ${top_builddir}/libFMS/libFMS.la

# Build this test program.
check_PROGRAMS = test_monin_obukhov

# This is the source code for the test.
test_monin_obukhov_SOURCES = test_monin_obukhov.F90

# Run the test program.
TESTS = test_monin_obukhov.sh

# These files will also be included in the distribution.
EXTRA_DIST = input_base.nml test_monin_obukhov.sh \
test_monin_obukhov.bats

# Clean up
CLEANFILES = input.nml *.out

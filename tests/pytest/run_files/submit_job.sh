#!/bin/bash


HEAD=$1
RUNDIR=/rundir

ulimit -s unlimited
cp $HEAD/FV3/fv3.exe $RUNDIR/fv3.exe
cd $RUNDIR
mpirun -np 6 ${OTHER_MPI_FLAGS} $RUNDIR/fv3.exe

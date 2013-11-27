#!/bin/bash
#corrida_si_as_6.sh

abinit_check.sh 1

abinit_check.sh 2

rklist.sh 21 21 2

rlayer.sh  4.788090 1 4 1 1

run_tiniba.sh -r setkp -k 44 -g 2 -G 4

run_tiniba.sh -r run -k 44 -N 6 -x 2 -w


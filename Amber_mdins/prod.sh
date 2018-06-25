#!/bin/sh
echo "Started Production on `date` "
#do_parallel="mpirun pmemd.MPI"
do_cuda="mpirun -n 24 pmemd"

prmtop="solvcomplex.prmtop"
coords="09.equil"


MDINPUTS=(10.prod)

for input in ${MDINPUTS[@]}; do

 $do_cuda -O -i ${input}.mdin -o ${input}.mdout -p $prmtop -c ${coords}.rst7 -ref ${coords}.rst7 -x ${input}.trj -inf ${input}.info -r ${input}.rst7
 coords=$input
done

echo "Finished Production on `date` "

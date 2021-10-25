#!/bin/csh 
for n in 8 16 32 64 128
do
m=$(($n * $n))
echo Number of processes = $n
srun -n $n ./a.out $n
done
end 
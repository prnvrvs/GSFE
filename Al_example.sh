atomsk --create fcc 4.039 Al orient [11-2] [-110] [111] -duplicate 1 1 8 vasp
for i in `seq 0 0.1 1`
do
mkdir $i
cd $i
atomsk ../POSCAR -shift above 0.48*BOX z $i*BOX 0.0 0.0 -fix z below 0.48*BOX z cell set $box_height H3 vasp
cd ..
done

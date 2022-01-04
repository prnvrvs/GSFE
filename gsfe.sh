# Bash script created by Pranav Kumar
# Email : prnvkmr4@gmail.com
# atomsk package needed to run this script kindly read README.md
#atomsk web page :https://atomsk.univ-lille.fr/


module load gcc-9.1.0 # load necessary module to run atomsk
for j in `seq -w 0.00 0.10 0.50`
do
mkdir $j
cd $j
for i in `seq -w 0.00 0.10 0.50`
do
mkdir $i
cd $i
atomsk ../../CONTCAR -shift above 0.48*BOX z $i*BOX $j*BOX 0.0 -fix z above 0.48*BOX z -cell add 10 H3 vasp
ln -s ../../INCAR INCAR
ln -s ../../POTCAR POTCAR
ln -s ../../KPOINTS KPOINTS
ln -s ../../run.pbs run.pbs
cd ..
done
cd ..
done

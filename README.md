This is bash script to create input file for 2D-GSFE for vasp. \
This need atomsk package for super easy acesss \
To install atomsk in your system, \
Do following step: 

**git clone https://github.com/pierrehirel/atomsk/**  \
**cd atomsk/src**  \
**make atomsk**  \
This will generate **atomsk** executable \

**Code gsfe.sh**\
atomsk ../../CONTCAR -shift above 0.48\*BOX z $i\*BOX $j\*BOX 0.0 -fix z above 0.48*BOX z -cell add 10 H3 vasp \
run using **bash -i gsfe.sh** 


Here *atomsk* is taking CONTCAR as input and shifting atoms who is 0.48 times total length of box along z by $i time along x and $j time along y and finally it is adding 10 Anstrom vaccum along Z.
User can shift based on angstrom value as well 

This will create bunch of folder each contain series of folder where required POSCAR is generated

Code by : PRANAV KUMAR \
email: prnvkmr4@gmail.com

*Thanks to Dr. Pierre Hirel*\
atomsk webpage: https://atomsk.univ-lille.fr/index.php

# Welcome to Amber Tutorials by Dev and Anurag!

## 01. AmberTutorial (Protein-Ligand Simulation)

### 01. Preprocessing

1. PDB file used for this tutorial is PDB:3HTB (ligand name is JZ4)
2. To run download protein structure and separate the two using any visualization tool like Maestro or Pymol.
3. Save protein as pdb (protein can be preprocess using maestro but may give some error.) and ligand as mol2.

### 02. Parametrization of Ligand

1. Use the following commands to generate forcefield parameters for Ligand (JZ4 in this example):

`antechamber -i JZ4.maes.mol2 -fi mol2 -o lig.ante.mol2 -fo mol2 -at gaff -c bcc -rn JZ4 -nc 0  `

`parmchk2 -i lig.ante.mol2 -f mol2 -o lig.parmchk2.frcmod`

### 02. Parametrization of Protein; Adding Water and ions to Protein-ligand Complex

1.  Use tleap to generate the parameter and coordinate file for protein-ligand complex by using these commands:

`tleap -f tleap.in`

### 03. Equilibration:

1. Copy all files from **Amber_mdin** to the current folder which have rs7 and prmtop files.

2. run equilibration using 

`chmod +x ./equilibration.sh`

`./equilibration.sh 1>amber.stdout.log 2>amber.stderr.log &`

### 04. Production MD (final run)

2. run equilibration using 

`chmod +x ./prod.sh`

`./prod.sh 1>amber.stdout.log 2>amber.stderr.log &`



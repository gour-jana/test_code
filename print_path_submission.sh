#!/bin/bash 

datafile=main_input.dat
sub=job.sge

mkdir ionic_DOS
cd ionic_DOS

for U1 in  1.0 2.0 3.0
do
mkdir -p U_$U1
cd U_$U1

for tp in 0.0 
do 
mkdir -p tp_$tp
cd tp_$tp

for seed in 87959 
do 
mkdir -p seed_$seed
cd seed_$seed

for strnth in 0.0 ,1.0
do
mkdir -p strnth_$strnth
cd strnth_$strnth





#!******************************************************************************
echo   "8                         !d "             > $datafile
echo   "4                          !dc "            >> $datafile
echo   "-1.0d0                     !t1     "        >> $datafile
echo   $tp"0d0                      !t2     "        >> $datafile
echo   "29                         !Tgrid_max "      >> $datafile
echo   "2000                       !MCSW "          >> $datafile
echo   "10                          !intrvl   "      >> $datafile
echo   $U1"d0                      !U1 "             >> $datafile  
echo   "1.0d0                      !filling "       >> $datafile
echo   "0.02                       !gama_m "          >> $datafile 
echo   $strnth"0d0                       !strnth "        >> $datafile 
echo   "$seed                      !seed "          >> $datafile
echo   "../../../U_$U1/tp_$tp/seed_$seed/strnth_$strnth" >> $datafile
#!******************************************************************************



#********************************************************************************
echo "#PBS  -N   3DI_"$U1"_tp_"$tp                            > $sub
echo "#PBS -l nodes=1:ppn=1"                        >>$sub
echo "#PBS -j oe "                                  >> $sub   
echo "#PBS -o out.log"                                  >> $sub 
echo "#PBS -e err.log"                                  >> $sub           
echo "cd"    \$PBS_O_WORKDIR                         >> $sub
echo "date"                                         >> $sub
echo "date"                                         >> $sub
#******************************************************************************

cd ..
done

cd ..
done 

cd ..
done

cd ..
done

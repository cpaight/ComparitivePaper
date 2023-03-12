#!/bin/sh 
#for sample in $(cat /home/cpaight/cpaightNAS/cpaight/data/ochramonas/SingleStrain/18/list.txt);
#do

#/home/cpaight/bbmap/bbduk.sh \
#in=/home/cpaight/cpaightNAS/cpaight/data/ochramonas/SingleStrain/24/${sample}/transcripts.fasta \
#outm=/home/cpaight/cpaightNAS/cpaight/data/ochramonas/SingleStrain/24/${sample}/${sample}_ribo.fasta \
#k=31 t=10 ref=/home/cpaight/cpaightNAS/cpaight/data/database/ribokmers.fa.gz
#done 

#for sample in $(cat /home/cpaight/cpaightNAS/cpaight/data/ochramonas/SingleStrain/18/list.txt);
#do

#makeblastdb -in /home/cpaight/cpaightNAS/cpaight/data/ochramonas/SingleStrain/24/${sample}/${sample}_ribo.fasta \
#-dbtype 'nucl' \
#-out /home/cpaight/cpaightNAS/cpaight/data/ochramonas/SingleStrain/24/${sample}/${sample}db

#done

for sample in $(cat /home/cpaight/cpaightNAS/cpaight/data/ochramonas/SingleStrain/18/list.txt);
do

blastn -db /home/cpaight/cpaightNAS/cpaight/data/ochramonas/SingleStrain/24/${sample}/${sample}db \
-query /home/cpaight/cpaightNAS/cpaight/data/ochramonas/SingleStrain/24/Och_18S_RNAseq.fasta \
-out /home/cpaight/cpaightNAS/cpaight/data/ochramonas/SingleStrain/24/${sample}/${sample}18S.txt \
-evalue 1e-20 -outfmt 6 -max_target_seqs 30 

done

for sample in $(cat /home/cpaight/cpaightNAS/cpaight/data/ochramonas/SingleStrain/18/list.txt);
do

cut -f2 /home/cpaight/cpaightNAS/cpaight/data/ochramonas/SingleStrain/24/${sample}/${sample}18S.txt > /home/cpaight/cpaightNAS/cpaight/data/ochramonas/SingleStrain/24/${sample}/${sample}hits.txt

done

for sample in $(cat /home/cpaight/cpaightNAS/cpaight/data/ochramonas/SingleStrain/18/list.txt);
do

faSomeRecords /home/cpaight/cpaightNAS/cpaight/data/ochramonas/SingleStrain/24/${sample}/transcripts.fasta  /home/cpaight/cpaightNAS/cpaight/data/ochramonas/SingleStrain/24/${sample}/${sample}hits.txt /home/cpaight/cpaightNAS/cpaight/data/ochramonas/SingleStrain/24/${sample}18s.fasta

done

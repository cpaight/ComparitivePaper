 #!/bin/sh 

for sample in $(cat /home/cpaight/cpaightNAS/cpaight/data/herterotroph/rawreads/samples)
do

    echo "On sample: $sample"

    bbmap.sh in=/home/cpaight/cpaightNAS/cpaight/data/herterotroph/rawreads/${sample}_R1_001.fastq.gz  \
    in2=/home/cpaight/cpaightNAS/cpaight/data/herterotroph/rawreads/${sample}_R2_001.fastq.gz  \
    unpigz=t pigz=t slow k=12 pairedonly=t \
    ref=/home/cpaight/cpaightNAS/cpaight/data/Mchameleon/raw_data/mapping/Mchameleon/assembly/transcripts.fasta \
    outm=/home/cpaight/cpaightNAS/cpaight/data/herterotroph/mapped/${sample}.fq \
    outu=/home/cpaight/cpaightNAS/cpaight/data/herterotroph/unmapped/${sample}.fq \
    printunmappedcount=t \

done

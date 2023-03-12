 #!/bin/sh 

for sample in $(cat /home/cpaight/cpaightNAS/cpaight/data/temperateMrubrum/mtempRubrum/Mr2A1/samples)
do

    echo "On sample: $sample"

    bbmap.sh in=/home/cpaight/cpaightNAS/cpaight/data/temperateMrubrum/mtempRubrum/Mr2A1/${sample}_R1_001.fastq.gz  \
    in2=/home/cpaight/cpaightNAS/cpaight/data/temperateMrubrum/mtempRubrum/Mr2A1/${sample}_R2_001.fastq.gz  \
    unpigz=t pigz=t slow k=12 pairedonly=t \
    ref=/home/cpaight/cpaightNAS/cpaight/data/temperateMrubrum/cryptophyte/transcripts.fasta \
    outm=/home/cpaight/cpaightNAS/cpaight/data/temperateMrubrum/mtempRubrum/Mr2A1/mapped/${sample}.fq \
    outu=/home/cpaight/cpaightNAS/cpaight/data/temperateMrubrum/mtempRubrum/Mr2A1/unmapped/${sample}.fq \
    printunmappedcount=t \

done

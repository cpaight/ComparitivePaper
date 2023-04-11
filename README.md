# ComparitivePaper
Bioinfomatic analysis 
All code for the mapping, binning, assembely for a compartive transcritomics of 4 Mesodinium species
Code for R analysis and figure generation

Organization

Code for mapping reads to cryptophyte transcriptomes with bbmap for each host prey pair as well as the RNAspades and Transdecoder scripts is in mapassem
Output statistics for bbmap and spades in in output
Sample file names for each prey host pair in in samples

Annotation

Following Trnasdecoder transcripts.fasta.pep file was annotated with https://www.kegg.jp/ghostkoala/
datail annotaions was downloaded and formated 

#format detail User_ko_definition.txt

#sed -r 's/.+(K[0-9]+).+(K[0-9]+).+/\1/g' user_ko_definition.txt > allK3.txt

#sed -i -r 's/.+(K[0-9]+).+/\1/' allK3.txt

#grep 'K' allK3.txt > McK.txt

#sort McK.txt | uniq >MckUniq.txt

#format brite.txt

#sed -i -r 's/(M[0-9]+).+(\(.+\))$/\1\t\2/' Mc_brite.txt

#grep -E 'M[0-9]+' McComplete.txt > MchameleonMap.txt

#sed -i -r 's/^\s+//' MchameleonMap.txt

#sed -i -r 's/(.+)/\1\t1/' MchameleonMap.txt

Pathway analysis was done in R with the included markdown documents

# Chr size
for i in Dapl_10x_Zhan_QM_Pilon_HiC Dapl_Zhan_v3_HiC; do
	echo $i
	head -n30 $i.seq_length_Vr.txt | awk '{sum += $2}END{print sum}'
done
Dapl_10x_Zhan_QM_Pilon_HiC
255869413
Dapl_Zhan_v3_HiC
245185305
# Total size
for i in Dapl_10x_Zhan_QM_Pilon_HiC Dapl_Zhan_v3_HiC; do
	echo $i
	awk '{sum += $2}END{print sum}' $i.seq_length_Vr.txt
done
Dapl_10x_Zhan_QM_Pilon_HiC
263826693
Dapl_Zhan_v3_HiC
248703116

# Chromosome size proportion to genome
Dapl_10x_Zhan_QM_Pilon_HiC
echo "255869413/263826693" | bc -l
.96983898820275930153
Dapl_Zhan_v3_HiC
echo "245185305/248703116" | bc -l
.98585538027597531186

# unplaced size
expr 263826693 - 255869413
7957280
expr 248703116 - 245185305
3517811

# Gap in Chr.fasta
for i in *Chr.fasta; do echo $i; grep "N" $i | wc -m; done
Dapl_10x_Zhan_QM_Pilon_HiC.Chr.fasta
9523290
Dapl_Zhan_v3_HiC.Chr.fasta
7394715
# Gap rate
echo "9523290/255869413" | bc -l
.03721933735002549914
echo "7394715/245185305" | bc -l
.03015969900806249379

# Gap in all
for i in *HiC.fasta; do echo $i; grep "N" $i | wc -m; done
Dapl_10x_Zhan_QM_Pilon_HiC.fasta
9731451
Dapl_Zhan_v3_HiC.fasta
7947113
# Gap rate
echo "9731451/263826693" | bc -l
.03688577106941942375
echo "7947113/248703116" | bc -l
.03195421564400503932

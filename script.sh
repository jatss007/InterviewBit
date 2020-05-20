
year=$(ls *.jpg| cut -d '-' -f 1|sort -n|uniq)
month=$(ls *.jpg|cut -d '-' -f 2|sort -n|uniq)
echo $year
echo $month
for yr in $year;
do
	mkdir $yr
	for mon in $month;
	do
		mkdir $yr/$mon -p
		files=$yr-$mon*
		for file in $files;
		do
			echo $file
			mv $file $yr/$mon
		done
	done

done 

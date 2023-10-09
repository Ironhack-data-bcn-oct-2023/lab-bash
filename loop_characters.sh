for i in 'ls -l'
do
	val=`echo $i | cut -d '.' -f1 | wc | tr '\t' ' ' | tr -s ' ' | sed 's/^ //' | cut -d' ' -f 3`
	val=`/usr/bin/expr $val - 1`
	echo $i $val
done

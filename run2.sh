tool=neato
for a in *.dot;
do
		echo "traitement du fichier $a"
	a2="${a%.*}"
	$tool -Tsvg $a > $a2.svg
	$tool -Tpng $a > $a2.png
	
done

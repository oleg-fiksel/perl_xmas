for i in 12 01; do
	for j in {01..31}; do
		clear;
		echo "$i-$j";
		./perl_xmas.pl -m $i -d $j;
		sleep 0.3;
	done;
done

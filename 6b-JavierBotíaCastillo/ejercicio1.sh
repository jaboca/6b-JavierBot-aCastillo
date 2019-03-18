
##$x=`cat nombres.txt | wc-l`
for x in $(cat nombres.txt);do
    # crear el directorio x, movernos a el
    mkdir $x;
    cd $x;
    for i in $(seq 1 $1);do
	 
    # crear dentro de x, el directorio persona i  cd nombres >> mkdir nombre1#
	mkdir persona$i

	echo $i;
    done
    cd ..
done


    
    

echo "voy a decir los pares";
sumaimpares=0;
sumapares=0;
total=0;
totalpares=0;
totalimpares=0;
for i in $(cat numeros.txt);do
    modulo=$(($i % 2));
    if let "$modulo == 0"; then
	echo $i
	totalpares=$(($totalpares+1));
	sumapares=$(($sumapares+$i));
    fi
done
echo "la suma de los pares es $sumapares";
echo "voy a decir los impares";
for i in $(cat numeros.txt);do
    modulo=$(($i % 2));
    if let "$modulo != 0"; then
	echo $i
	totalimpares=$(($totalimpares+1));
	sumaimpares=$(($impares+$i));
    fi
done
echo "la suma de los impares es $sumaimpares";
echo "el total de los impares es $totalimpares";
echo "el total de pares es $totalpares";
echo "el total de impares es $totalimpares";
total=$(($totalpares+$totalimpares));
echo "el total es $total";

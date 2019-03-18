#IFS=$'\n' con ifs sin poner me lee cada numero en una vuelta de bucle
cont=0
contadordia=0
for i in $(cat precipitaciones.txt);do
    cont=$((cont+1));
    modulo=$(( $cont % 2 ))
    if let "$modulo == 0"; then
	contadordia=$((contadordia+1))
	if let "$i == 0"; then
	    echo "no ha llovido en el dia $contadordia";
	fi
	
    fi
    

done


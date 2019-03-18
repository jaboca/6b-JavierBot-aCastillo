#IFS=$'\n' con ifs sin poner me lee cada numero en una vuelta de bucle
cont=0
totaldias=0
suma=0
for i in $(cat precipitaciones.txt);do
    cont=$((cont+1));
    modulo=$(( $cont % 2 ))
    if let "$modulo == 0"; then
	totaldias=$((totaldias+1))
	suma=$((suma+i))
       
       
    fi
    

done
echo ' la media es '
echo $((suma/totaldias))



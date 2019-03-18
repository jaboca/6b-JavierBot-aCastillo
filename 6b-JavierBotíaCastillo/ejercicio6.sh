cd $1
contador=0
for i in $(ls *.txt); do
    echo "borrando el fichero $i"
    contador=$((contador+1))
done
echo "se han borrado $contador ficheros"

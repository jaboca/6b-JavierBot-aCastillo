antes=$(pwd)
cd $1
despues=$(pwd)

if [ $antes == $despues ]; then
    echo "El directorio no existe"
else
    
contador=0
for i in $(ls *.txt); do
    echo "borrando el fichero $i"
    contador=$((contador+1))
done


echo "se han borrado $contador ficheros"
fi

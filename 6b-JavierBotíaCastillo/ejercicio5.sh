IFS=$'\n'
contadorWindows=0;
contadorLinux=0
procesosWindows=0
procesosLinux=0

for i in $(cat listado.txt);do
   
    unset IFS
    read -ra E <<< "$i"
    #E 0 es el usuario E1 el sistema E2 los procesos
    if [[ "${E[1]}" == "Linux" ]]; then
	contadorLinux=$((contadorLinux+1))
	procesosLinux=$((procesosLinux+${E[2]}))
    fi
    
   
    if [[ "${E[1]}" == "Windows" ]]; then
	contadorWindows=$((contadorWindows+1))
	procesosWindows=$((procesosWindows+${E[2]}))
    fi
    IFS=$'\n'
done
echo "Windows -> $contadorWindows $procesosWindows"
echo "Linux -> $contadorLinux $procesosLinux"

flag=$1
echo $flag

if [[ "$flag" == "install" ]]; then
   for (( c=4; c<=10; c++ ))
    do  
    helm install sunsutest$c ./testchart  --set metadata.counter=$c
    done
elif [[ "$flag" == "uninstall" ]]; then
   for (( c=4; c<=10; c++ ))
    do  
    helm uninstall sunsutest$c
    done
fi


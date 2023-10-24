#!/bin/bash

file_name="/home/utente6/data/secrets/utente7_secret/utente7_pwd.txt" 

    if [ -e "$file_name" ]; then
        echo "il file esiste, la tua password è ora in utente7_pwd.txt"
        echo "password utente 6 : *9Nbt#B!" >> $file_name
        break
    else 
    	echo "prima crea il file utente7_pwd.txt nel percorso $filename"
    fi
    
  

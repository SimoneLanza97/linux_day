#!/bin/bash

file="passwords.txt"

# Verifica se il file esiste
if [ -e "$file" ]; then 
    pass=$(awk -F',' '{print $1}' "$file")
    #echo "password utente 1: $pass" > "/home/utente1/data/secret/sutente2_pwd.txt"

    #File nascosto
    pass2=$(awk -F',' '{print $2}' "$file")
    #echo "password utente 2: $pass2" > "/home/utente2/data/secrets/.utente3_pwd.txt"

    #password in alberatura cartelle
    pass3=$(awk -F',' '{print $3}' "$file")
    mkdir -p /home/utente3/data/Tux/Ubuntu/Distro/Geek/Penguin/Fun /home/utente3/data/OpenSource/DistroLand/PenguinWorld home/utente3/data/LinuxHub/TuxPlanet/
    #echo "password utente 3: $pass" > "/home/utente3/data/LinuxHub/TuxPlanet/utente4_pwd.txt"

    #password compresa in stringa casuale
    pass4=$(awk -F',' '{print $4}' "$file")
    random_string=$(openssl rand -base64 500) > "/home/utente4/data/secrets/utente5_pwd.txt"
    #echo "password utente 4: $pass2" >> "/home/utente4/data/secrets/utente5_pwd.txt"
    random_string=$(openssl rand -base64 500) > "/home/utente4/data/secrets/utente5_pwd.txt"

    #password nel file *new*
    pass5=$(awk -F',' '{print $5}' "$file")
    random_string=$(openssl rand -base64 3000)
    # Scrive la stessa stringa nei file test_old.txt e test_new.txt
    echo "$random_string" > "/home/utente4/data/secrets/utente6_pwd_old.txt"
    echo "$random_string" > "/home/utente4/data/secrets/utente6_pwd_new.txt"
    echo "$pass5" >> "/home/utente4/data/secrets/utente6_pwd_new.txt"
	
    #liv6 script a parte
    
    #liv7 labirinto di archivi
    pass7=$(awk -F',' '{print $7}' "$file")
    echo "password utente 8: $pass7" >> "/home/utente7/data/archive/library/utente8_pwd.txt"
    mkdir "/home/utente7/data/archive/digital/"
    tar -czf user8_pwd.tar.gz /home/utente7/data/archive/


else

    echo "Il file $file non esiste."
fi

#!/bin/bash

file="passwords.txt"

# Verifica se il file esiste
if [ -e "$file" ]; then 
    pass=$(awk -F',' '{print $2}' "$file")
    mkdir -p /home/utente1/data/secret/
    echo "password utente 2: $pass" > "/home/utente1/data/secret/utente2_pwd.txt"

    #File nascosto
    pass2=$(awk -F',' '{print $3}' "$file")
    mkdir -p /home/utente2/data/secrets/
    mkdir -p /home/utente2/desktop/images/
    echo "password utente 3: $pass2" > "/home/utente2/data/secrets/.utente3_pwd.txt"

    #password in alberatura cartelle
    pass3=$(awk -F',' '{print $4}' "$file")
    mkdir -p /home/utente3/data/Tux/Ubuntu/Distro/Geek/Penguin/Fun /home/utente3/data/OpenSource/DistroLand/PenguinWorld home/utente3/data/LinuxHub/TuxPlanet/
    echo "password utente 4: $pass4" > "/home/utente3/data/LinuxHub/TuxPlanet/utente4_pwd.txt"

    #password compresa in stringa casuale
    pass4=$(awk -F',' '{print $5}' "$file")
    mkdir -p /home/utente4/data/secrets
    mkdir -p /home/utente4/data2/secrets2
    random_string=$(openssl rand -base64 300000) 
    echo $random_string >> "/home/utente4/data/secrets/utente5_pwd.txt"
    echo "passwordutente5:$pass5 ARjHuVVyyDEmFO5y/ilc9qQaumRNjRLdJIKzmnLF+8nCApxVX0Jmb4yzroo/42nr" >> "/home/utente4/data/secrets/utente5_pwd.txt"
    echo $random_string >> "/home/utente4/data/secrets/utente5_pwd.txt"

    #password nel file *new*
    pass6=$(awk -F',' '{print $6}' "$file")
    random_string1=$(openssl rand -base64 300000)
    # Scrive la stessa stringa nei file test_old.txt e test_new.txt
    mkdir -p /home/utente5/data/secrets/
    mkdir -p /home/utente5/desktop/users_info/bob/
    echo "$random_string1" > "/home/utente5/data/secrets/utente6_pwd_old.txt"
    echo "$random_string1" > "/home/utente5/data/secrets/utente6_pwd_new.txt"
    echo "$pass6 ARjHuVVyyDEmFO5y/ilc9qQaumRNjRLdJIKzmnLF+8nCApxVX0Jmb4yzroo/42nr" >> "/home/utente5/data/secrets/utente6_pwd_new.txt"
    echo "$random_string1" >> "/home/utente5/data/secrets/utente6_pwd_old.txt"
    echo "$random_string1" >> "/home/utente5/data/secrets/utente6_pwd_new.txt"
	
    #liv6 script a parte
    
    #liv7 labirinto di archivi
    pass7=$(awk -F',' '{print $8}' "$file")
    mkdir -p /home/utente7/data/archive/library/
    mkdir -p /home/utente7/data/archive/digital/
    echo "password utente 8: $pass7" >> "/home/utente7/data/archive/library/utente8_pwd.txt"
    cd /home/utente7/data/
    tar -czf user8_pwd.tar.gz archive/
    rm -r archive
    chown -R utente7:utente7 /home/utente7/ 
    cd /
    

    #liv 8 

    pass8=$(awk -F',' '{print $9}' "$file")
    mkdir -p /home/utente8/data/archive/library/
    mkdir -p /home/utente8/data/archive/digital/
    echo "password utente 9: $pass8" >> "/home/utente8/data/archive/library/utente9_pwd.txt"
    var=$(xxd -p "/home/utente8/data/archive/library/utente9_pwd.txt")  
    echo "$var" > /home/utente8/data/archive/library/utente9_pwd.txt
    cd /home/utente8/data/
    tar -czf user9_pwd.tar.gz archive/
    rm -r archive
    chown -R utente8:utente8 /home/utente8/ 
    cd /

    #liv9
    adduser utente9 sudo
    echo "HAI VINTO !" > /README
    chmod 700 /README
else

    echo "Il file $file non esiste."
fi

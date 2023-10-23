#!/bin/bash 
i=1
passwords=("qoP54Am&" "fUSr3@*o" "m&y5QxM7" "fowLB#8d" "Wf3*Qyh6" "&6bXe%5V" "*9Nbt#B!" "m#KVj%J2" "qZG@@RL9" "Xg!ZWQx3")

while [ $i -le 10 ]; do
    username="utente$i"
    password="${passwords[$i-1]}"
    
    useradd -m -s /bin/bash $username  # Crea l'utente con la directory home
    echo "$username:$password" | chpasswd  # Imposta la password
    i=$((i+1))
done

#!/bin/bash
message="Benvenuto al livello 1 di Tux's game, il gioco per imparare l'uso del terminale Linux.\nLo scopo del livello è trovare la password dell'utente2, contenuta nel file utente2_pwd.txt.\nEcco i comandi utili al raggiungimento dell'obiettivo:\nman -> il manuale dei comandi Linux (digita 'man nome_comando' per visualizzare le opzioni di quel comando)\npwd -> mostra la posizione in cui ti trovi dandoti il percorso\nls -> elenca il contenuto della directory in cui ti trovi\ncd -> comando utile per spostarsi tra le directory\ncat -> stampare a terminale il contenuto di un file."
echo "echo -e '$message'" >> /home/utente1/.bashrc


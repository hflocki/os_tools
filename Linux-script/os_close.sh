#!/bin/sh
screen -S OS -X stuff $'alert general Diese Region wird in 5 Minuten neu gestartet. Bitte die Region wechseln.\n'
sleep 60
screen -S OS -X stuff $'alert general Diese Region wird in 4 Minuten neu gestartet. Bitte die Region wechseln.\n'
sleep 60
screen -S OS -X stuff $'alert general Diese Region wird in 3 Minuten neu gestartet. Bitte die Region wechseln.\n'
sleep 60
screen -S OS -X stuff $'backup\n'
screen -S OS -X stuff $'alert general Diese Region wird in 2 Minuten neu gestartet. Bitte die Region wechseln.\n'
sleep 60
screen -S OS -X stuff $'alert general Diese Region wird in 1 Minute neu gestartet. Bitte die Region wechseln.\n'
sleep 60
screen -S OS -X stuff $'alert general SERVER RESTART\n'
sleep 10
killall os_loop.sh
killall screen
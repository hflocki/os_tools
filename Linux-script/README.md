# Steuerung eines Grid´s über Linux Shell Scripte.
Vergesst bitte nicht die Scripte für eure bedürfnisse anzupassen.

## osstart.sh
	Hier wird das gesamte Grid gestartet.
	
## osstop.sh
	Hier wird das gesamte Grid gestoppt.
	
## osrestart.sh
	Hier wird das gesamte Grid gestoppt,
	die log Dateien werden gelöscht	
	und anschliessend alles neu gestartet.
	
## oslogdel.sh
	OpenSim hängt alles an einer log Datei an, 
	um diese übersichtlich zu halten, 
	muss diese gelegentlich gelöscht werden.
	
## oscopy.sh
	Kopiert ein neue OpenSimulator Version in die einzelnen Bereiche.
	
## oscompi.sh
	Kompiliert eine neue OpenSimulator Version.
	
## osupgrade.sh
	Fährt das Grid herunter,
	die log Dateien werden gelöscht,
	kopiert eine neue OpenSimulator Version in die einzelnen Bereiche 
	und startet das Grid neu.
	
## osregionbackup.sh
	Erstellt ein Regionsbackup samt aktuellem Datum.
	
## ossettings.sh
	Setzt Standart Einstellungen.

## mono5.sh
Prüft ob mono-complete installiert ist.
Wenn nicht wird mono-complete 5.x ohne weitere abfrage installiert.

# Ausführbar machen und aufrufen:
    chmod +x /opt/mein-script.sh
	Ist das Script nun ausführbar gemacht, lässt es sich durch den Befehl:
    ./mein-script.sh oder /opt/mein-script.sh ausführen.
	
    Beispiele:
    chmod +x /opt/osstart.sh
    chmod +x /opt/osstop.sh
    chmod +x /opt/osrestart.sh
    chmod +x /opt/oslogdel.sh
    chmod +x /opt/oscopy.sh
    chmod +x /opt/oscompi.sh
    chmod +x /opt/osupgrade.sh
    chmod +x /opt/osregionbackup.sh
    chmod +x /opt/ossettings.sh


Bitte Pfade und Namen anpassen.

Wenn ihr kein Money Serer habt und/oder Robust nicht benötigt, dann löscht den Bereich heraus.

import random
import sys
print 'Nagellack Farbweahler:'
reichweite = 65535
def programm():
	for a in range (0,3):
		print ''
	rot = random.randint(1, reichweite)
	gruen = random.randint(1, reichweite)
	blau = random.randint(1, reichweite)
	print 'Ihr 16bit RGB Code ist:', rot,gruen,blau
	befehl = raw_input('''
geben Sie "naechste" ein um eine neue Farbe auszugeben
oder "schliessen" um das Programm zu beenden

''')
	eingabe(befehl)
	raw_input()
def eingabe(befehl_parameter):
	if befehl_parameter == 'naechste':
		#Startet das Programm erneut
		programm()
	if befehl_parameter == 'schliessen':
		#Schliesst das Programm
		sys.exit(0)
	else:
		neueingabe()
def neueingabe ():
	#ueberschreibt die Variable befehl aus progamm()
	befehl = raw_input('''
Befehl nicht bekannt!
Bitte wiederholen sie ihre Eingabe.

''')
	eingabe(befehl)
programm()

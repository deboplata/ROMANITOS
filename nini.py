romnum: str
rom = {'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000} 
ent = 0
romnum = str(input("Introduzca el numero romano que desea convertir: ")).upper ( )
for i in range(len(romnum)):
    if i > 0 and rom[romnum[i]] > rom[romnum[i - 1]]:
        ent+= rom[romnum[i]] - 2 * rom[romnum[i - 1]]
    else:
        ent+= rom[romnum[i]]
print ( "El numero romano ingresado es:", romnum)
print ( "Ahora en arabigo: ", ent)

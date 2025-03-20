#	TextGrid converters from SAMPA (MAUS output version) to IPA
#	INPUT: A folder with TextGrids in SAMPA (this has been specially created and adjusted for the MAUS output tier )
#	OUTPUT: the same file with the changed transcription. Make a copy beforehand.
#	This is for the Catalan version
###########################################################################################



 form files
 comment Pon la ruta de la carpeta donde están los archivos:
 sentence Folder C:\Users\labfonub99\Desktop\sampa
 comment In which tier is the SAMPA transcription?
 integer tier 2

 endform


#Crea la lista de archivos de todos los wav de esa carpeta
lista = Create Strings as file list: "lista", folder$+ "/" + "*.TextGrid"



#selecciona la lista y extrae en una variable el numero de archivos que tiene
selectObject: lista 
nstrings = Get number of strings

#empieza el bucle 
for i to nstrings
	selectObject: lista
	file$ = Get string: i

	grid = Read from file: folder$ + "/" + file$


	Replace interval texts: tier, 1, 0, "'", "ˈ", "literals"
	Replace interval texts: tier, 1, 0, "''", "ˈ", "literals"
	Replace interval texts: tier, 1, 0, ":", "ˈ", "literals"

	
Replace interval texts: tier, 1, 0, "<usb>" , "(..)" , "literals"
Replace interval texts: tier, 1, 0, "<nib>" , "(.)" , "literals"
Replace interval texts: tier, 1, 0, "<p:>" , "(...)" , "literals"
Replace interval texts: tier, 1, 0, "<p>" , "(...)" , "literals"
Replace interval texts: tier, 1, 0, "tS" , "t͡ʃ" , "literals"
Replace interval texts: tier, 1, 0, "r\" , "ɹ" , "literals"
Replace interval texts: tier, 1, 0, "o~" , "õ" , "literals"
Replace interval texts: tier, 1, 0, "jj" , "ʝ̞" , "literals"
Replace interval texts: tier, 1, 0, "h\" , "ɦ" , "literals"
Replace interval texts: tier, 1, 0, "e~" , "ẽ" , "literals"
Replace interval texts: tier, 1, 0, "dZ" , "dʒ" , "literals"
Replace interval texts: tier, 1, 0, "dz" , "dz" , "literals"
Replace interval texts: tier, 1, 0, "a~" , "ã" , "literals"
Replace interval texts: tier, 1, 0, "Z" , "ʒ" , "literals"
Replace interval texts: tier, 1, 0, "z" , "z" , "literals"
Replace interval texts: tier, 1, 0, "x" , "x" , "literals"
Replace interval texts: tier, 1, 0, "w" , "w" , "literals"
Replace interval texts: tier, 1, 0, "v" , "v" , "literals"
Replace interval texts: tier, 1, 0, "u" , "u" , "literals"
Replace interval texts: tier, 1, 0, "T" , "θ" , "literals"
Replace interval texts: tier, 1, 0, "t" , "t" , "literals"
Replace interval texts: tier, 1, 0, "S" , "ʃ" , "literals"
Replace interval texts: tier, 1, 0, "s" , "s" , "literals"
Replace interval texts: tier, 1, 0, "p" , "p" , "literals"
Replace interval texts: tier, 1, 0, "O" , "ɔ" , "literals"
Replace interval texts: tier, 1, 0, "o" , "o" , "literals"
Replace interval texts: tier, 1, 0, "N" , "ŋ" , "literals"
Replace interval texts: tier, 1, 0, "n" , "n" , "literals"
Replace interval texts: tier, 1, 0, "m" , "m" , "literals"
Replace interval texts: tier, 1, 0, "L" , "ʎ" , "literals"
Replace interval texts: tier, 1, 0, "l" , "l" , "literals"
Replace interval texts: tier, 1, 0, "k" , "k" , "literals"
Replace interval texts: tier, 1, 0, "J" , "ɲ" , "literals"
Replace interval texts: tier, 1, 0, "j" , "j" , "literals"
Replace interval texts: tier, 1, 0, "i" , "i" , "literals"
Replace interval texts: tier, 1, 0, "h" , "h" , "literals"
Replace interval texts: tier, 1, 0, "G" , "ɣ" , "literals"
Replace interval texts: tier, 1, 0, "g" , "ɡ" , "literals"
Replace interval texts: tier, 1, 0, "f" , "f" , "literals"
Replace interval texts: tier, 1, 0, "E" , "ɛ" , "literals"
Replace interval texts: tier, 1, 0, "e" , "e" , "literals"
Replace interval texts: tier, 1, 0, "D" , "ð" , "literals"
Replace interval texts: tier, 1, 0, "d" , "d" , "literals"
Replace interval texts: tier, 1, 0, "B" , "β" , "literals"
Replace interval texts: tier, 1, 0, "b" , "b" , "literals"
Replace interval texts: tier, 1, 0, "a" , "a" , "literals"
Replace interval texts: tier, 1, 0, "@" , "ə" , "literals"
Replace interval texts: tier, 1, 0, ">" , "(...)" , "literals"
Replace interval texts: tier, 1, 0, "<" , "(...)" , "literals"

	
# catalan and spanish spoken in Catalonia
Replace interval texts: tier, 1, 0, "5", "ɫ", "literals"



# esto es un apaño, para hacerlo bien, hay que cambiar la lógica del script.
# coger todo el intervalo guardarlo en una variable y hacer los cambios usando 
# expresiiones regulares.
	Replace interval texts: tier, 1, 0, "r", "ɾ", "literals"        
	Replace interval texts: tier, 1, 0, "ɾɾ", "r", "literals"




	Save as text file: folder$ + "/" + file$

	
	
	select all
	minus Strings lista
	Remove
endfor

#limpieza de objetos final
select all
Remove

exit ¡Bien! Acabó






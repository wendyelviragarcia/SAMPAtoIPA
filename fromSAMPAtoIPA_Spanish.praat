#	TextGrid converters from SAMPA (MAUS output version) to IPA
#	INPUT: A folder with TextGrids in SAMPA (this has been specially created and adjusted for the MAUS output tier )
#	OUTPUT: the same file with the changed transcription. Make a copy beforehand.
#	This is for the Spanish version
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

	



	Replace interval texts: tier, 1, 0, "t", "t̪", "literals"     
     
     	Replace interval texts: tier, 1, 0, "tS", "t͡ʃ", "literals"
     	Replace interval texts: tier, 1, 0, "S", "ʃ", "literals"     
     
	Replace interval texts: tier, 1, 0, "jj", "ʝ̞", "literals"  
	#this is x-SAMPA
	Replace interval texts: tier, 1, 0, "j\", "ʝ", "literals"  


	Replace interval texts: tier, 1, 0, "B", "β̞", "literals"     
	Replace interval texts: tier, 1, 0, "T", "θ", "literals"     
	Replace interval texts: tier, 1, 0, "D", "ð̞", "literals"     
	Replace interval texts: tier, 1, 0, "G", "ɣ̞", "literals"     
	Replace interval texts: tier, 1, 0, "J", "ɲ", "literals"   
	#this is Spanish SAMPA  
	Replace interval texts: tier, 1, 0, "N", "ɲ", "literals"   
	# this is x-SAMPA
	Replace interval texts: tier, 1, 0, "J", "ɲ", "literals"   

	 
	Replace interval texts: tier, 1, 0, "L", "ʎ", "literals"
	
	# catalan and spanish spoken in Catalonia
	Replace interval texts: tier, 1, 0, "5", "ɫ", "literals"
	Replace interval texts: tier, 1, 0, "@", "ə", "literals"  



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






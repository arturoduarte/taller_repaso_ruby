# Se tienen dos arrays uno con el nombre de personas y otro con las edades, se pide generar un hash con el nombre y edad de cada persona (se asume que no existen dos personas con el mismo nombre)

personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
# 2.1 - Se pide generar un hash con la información:
# personas_hash = {"Carolina": 32, "Alejandro":28, "María Jesús":41, "Valentín":19}
puts "\n Ejercicio 2.1"
personas_hash = personas.zip(edades).to_h
print "#{personas_hash}\n"


#2.2 Crear un método que reciba el hash y devuelva la edad pasado como argumento.
puts "\n Ejercicio 2.2"

def edad(hash)
	acumulador = 0
	edades = []
	hash.each do |key ,value|
		
		acumulador += value
		edades << value
	end
	# acumulador = acumulador / hash.count.to_f
	puts "Las sumatoria de las edades son #{acumulador}"
	print "Las diferentes edades son #{edades}\n"
end

edad(personas_hash)
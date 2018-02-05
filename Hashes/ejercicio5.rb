datos = [{nombre:'Lucia',pais: 'Paraguay', continente: 'America', genero:'Femenino'},
{nombre:'Pedro',pais: 'Chile', continente: 'America', genero:'Masculino'},{nombre:'PEDRO',pais: 'España', continente: 'Europa', genero:'Masculino'},{nombre:'Arturo3',pais: 'Francia', continente: 'Europa', genero:'Masculino'},{nombre:'Arturo4',pais: 'Ecuador', continente: 'America', genero:'Masculino'},{nombre:'Arturo5',pais: 'Brasil', continente: 'America', genero:'Masculino'},{nombre:'Arturo6',pais: 'Italia', continente: 'Europa', genero:'Masculino'},{nombre:'pedro',pais: 'Inglaterra', continente: 'Europa', genero:'Masculino'}]

system("clear")
# Contar la cantidad de personas de la lista.
puts "================================================================="
puts "Cantidad de personas de la lista: \n #{datos.count}"
puts "================================================================="
# Generar un array con cada continente, eliminar repeticiones,considerar que pueden haber nombres escritos con mayúscula y minúscula.
array_continente = []
array_pedro = []
datos.each do |i|
	# agregar al array si el valor del continente no está contenido dentro del array
	# considera nombres en minúsculas y mayusculas
	array_continente << i[:continente] if !array_continente.map(&:upcase).include?(i[:continente].upcase)

	#Agrega al array, si el nombre es Pedro(tiene en cuenta minusculas y mayusculas)
	array_pedro << i if i[:nombre].upcase == "Pedro".upcase
end

print "Array de Continentes : \n#{array_continente}\n"
puts "================================================================="

print "Listado con nombre Pedro : \n#{array_pedro}\n"

puts "================================================================="
puts "Agrupar por Género:"
# puts datos.group_by{|i| i[:genero]}
lista1 = []
lista2 = []
lista1 << datos.select{|i| i[:genero].upcase == "Femenino".upcase}
lista2 << datos.select{|i| i[:genero].upcase == "Masculino".upcase}

# puts "Listado Género Femenino:\n #{lista1}"
# puts "Listado Género Masculino:\n #{lista2}"
puts "================================================================="

map = Hash.new(Array.new)
datos.each do |valores|
    map[valores[:continente]] += [valores[:pais]]
end

print "Los valores agrupados por continente son : \n#{map}\n"
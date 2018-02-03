# Se tienen dos arreglos
numeros = [1,2,3,0,1,2,2,1,2,1,2,0,3] 
colores = [:azul, :verde, :amarillo]

puts "================================================="
array_auxiliar = []
numeros.map do |elemento|
	puts "El indice es #{elemento}"
	array_auxiliar << colores[elemento]
end
print array_auxiliar
puts "\n================================================="



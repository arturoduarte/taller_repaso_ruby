# Dado los siguientes arreglos:

a = [1,2,3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]

# Se pide iterar sobre los arreglos para mostrar la información de la siguiente forma:
# 1 :azul, Tacos
# 2 :rojo, Quesadillas
# 3 :amarillo, Hamburguesas

puts "================================================="
# Tres Soluciones
(a.size).times do |e|
  puts "#{a[e]} #{b[e]}, #{c[e]}"
end

# esto tambien funciona1
# a.each_with_index do |item, index|
#   puts "#{item} #{b[index]} #{c[index]}"
# end

# esto tambien funciona2
# print a.zip(b,c)

puts "================================================="
# Se pide iterar sobre los arreglos para mostrar la información de la siguiente forma:
# 1 :amarillo, Tacos
# 2 :rojo, Quesadillas
# 3 :azul, Hamburguesas

iterator = 2
(a.size).times do |e|
	puts "#{a[e]} #{b[iterator]}, #{c[e]}"
	iterator -= 1
end

puts "================================================="
# Iterando los arreglos anteriores crear un único arreglo final con:
# [1, :azul, Tacos, 2, :rojo, Quesadillas, 3, :amarillo, "Hamburguesas"]

array_aux = []
(a.size).times do |e|
	array_aux << a[e] 
	array_aux << b[e] 
	array_aux << c[e] 
end
print "Unico Arreglo = \n#{array_aux}\n"
puts "================================================="





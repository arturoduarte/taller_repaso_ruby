# Dado el array:
array = [1,2,3,9,1,4,5,2,3,6,6]

#  1. Mostrar en pantalla el primer elemento.
puts "===================================="
puts "Primer Elemento: #{array.first}"

#  2. Mostrar en pantalla el último elemento.
puts "===================================="
puts "Ultimo Elemento: #{array.last}"

#  3. Mostrar en pantalla todos los elementos.
puts "===================================="
puts "Todos los Elementos: #{array}"

#  4. Mostrar en pantalla todos los elementos junto con un índice.
puts "===================================="
indice = 0
puts "Elementos pares con indices:"
array.each do |elementos|
	puts "Indice: #{indice} - Array: #{elementos}"
	indice += 1
end
puts "===================================="
#  5. Mostrar en pantalla todos los elementos que se encuentren en una posición par.
puts "Elementos en posición par:"
indice = 0
array.each do |elementos|
	puts "Indice: #{indice} - Elemento: #{elementos}" if indice.even?
	indice += 1
end
puts "===================================="
#  6. Determinar con el método aprendido en clases si un elemento ingresando pertenece al array o no, #  mostrar el resultado en pantalla
puts "Favor ingrese un número"
numero = gets.chomp.to_i

resultado = array.include?(numero)
puts resultado==true ? 'EL número ingresado si pertenece al array' : 'No pertenece al array'
puts "===================================="


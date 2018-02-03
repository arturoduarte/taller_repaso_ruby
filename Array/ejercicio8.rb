# Se tiene un ejercicio con una cantidad par de elementos en un arreglo, se pide agruparlos de a dos.
array = [1,2,3,4,5,6,7,8] 

puts "Agrupación de elementos, de a 2"
array.each_slice(2) do |elementos|
	print elementos
end

puts "\n"

a = [1,2,3,9,1,4,5,2,3,6,6]

# 1. Eliminar todos los números pares del arreglo.

# se puede hacer así
# a.delete_if { |x| x % 2 == 0 }
# puts a
puts "===================================="
print "Array inicial = #{a}\n"
a.each do |ele|
	a.delete(ele) if ele.even?
end

print "Array final sin numeros pares = #{a}\n"


# 2. Obtener la suma de todos los elementos del arreglo utilizando .each
puts "===================================="
acumulador = 0
a.each{|ele| acumulador += ele}
puts "La suma de los números es = #{acumulador}"


# 3. Obtener el promedio de los elementos del arreglo.
puts "===================================="
acumulador = 0
a.each{|ele| acumulador += ele}
puts "El promedio de los números son = #{acumulador / a.count.to_f}"

# 4. Incrementar todos los elementos en 1 retornando un nuevo arreglo.
puts "===================================="
arra_aux = a.map{|ele| ele + 1 }
puts "Los elementos aumentados en 1 son = #{arra_aux}"
puts "===================================="
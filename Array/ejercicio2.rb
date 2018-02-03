array = [1,2,3,9,1,4,5,2,3,6,6]
# 1. Eliminar el último elemento.
puts "===================================="
array.delete_at(-1)
print "Se eliminó el último elemento: \n #{array} \n"

# 2. Eliminar el primer elemento.
puts "===================================="
array.delete_at(0)
print "Se eliminó el primer elemento: \n #{array} \n"

# 3. Eliminar el elemento que se encuentra en la posición media, si el arreglo tiene un número par de elementos entonces remover el que se encuentre en la mitad izquierda, ejemplo, en el arreglo [1,2,3,4] se removería el elemento 2.
puts "===================================="
elementos = array.count #Primero cuento la cantidad de elementos del arreglo
indices = elementos-1 #cantidad de indice
puts "cantidad de elementos antes de eliminar = #{elementos}"

if elementos % 2 == 0
	array.delete_at((indices/2))
else
	array.delete_at((elementos/2))
end

print "Nuevo array luego de eliminar= #{array}"
print "\n"
puts "===================================="
# 4. Borrar el último elemento mientras ese número sea distinto a 1.
while array.last != 1
	array.delete_at(-1)
end
puts "Array mientras el ultimo elemento sea distinto a 1 = #{array}"
puts "===================================="
# 5. Utilizando un arreglo vacío auxiliar y operaciones de push and pop invertir el orden de los elementos en un arreglo.

puts "Array principal antes del pop = #{array}"
# declaro un array auxiliar
array_aux = []
# cuento la cantidad de elementos del array
veces = array.count
# de acuerdo a la cantidad de elementos, hago un push de los elementos en orden invertido
veces.times do
	array_aux << array.pop
end
puts "Array auxiliar = #{array_aux}"
puts "Array principal = #{array}"
puts "===================================="
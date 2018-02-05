hash = {"x": 1, "y":2}

system("clear")
puts "=============================================================="

puts "# Agregar el texto z con el valor 3"
hash[:z] = 3
print hash
puts "\n=============================================================="

puts "# Cambiar el valor de x por 5"
hash[:x] = 5
puts hash
puts "=============================================================="

puts "# Eliminar la clave y"
hash.delete(:y)
puts hash
puts "=============================================================="

puts "# Si el hash tiene una clave llamada z mostrar en pantalla 'yeeah'"
hash.each{|key, value| print "***yeeah*** \n" if key == :z}
puts "=============================================================="
puts "# Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores"
puts hash.invert
# ejemplo: x = {"a":"hola" } se transforme en {"hola": "a"}



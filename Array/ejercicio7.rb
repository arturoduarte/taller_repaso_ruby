# Dado los arrays:
a = [1,2,3,9,12,31, "domingo"]
b = ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"]

# 1. Se pide obtener la concatenación de ambos
puts "====================================================="
puts "Contatenación de 2 arrays : "
print a+b

puts "\n=================================================="
# Se pide obtener la unión de ambos
puts "Unión de 2 arrays : "
print a | b

puts "\n =================================================="
# Se pide obtener la intersección de ambos
puts "Intersección de 2 arrays : "
print a & b

puts "\n =================================================="
# Se pide agrupar en pares los elementos de cada conjunto.
puts "Agrupación en pares : "
print a.zip(b)

puts "\n =================================================="








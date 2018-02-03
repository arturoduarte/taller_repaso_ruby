# Dado un arreglo con nombres como el siguiente:
 nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia",
"Ray"]

# 1. Extraer todos los elementos que excedan mas de 5 caracteres.
puts "======================================================="

print "Extracción de elementos que exceden 5 caracteres \n #{nombres.reject{|elemento| elemento.size > 5}} \n"


# 2. Crear un arreglo nuevo con todos los elementos en minúscula
puts "======================================================="
array_aux = []
array_aux = nombres.map { |e| e.downcase  }
print "Arreglo con elementos en minúscula: \n#{array_aux} \n"

# 3. Crear un método que devuelva un arreglo con la cantidad de caracteres que tiene cada nombre.
puts "======================================================="
array_aux = []
array_aux = nombres.map { |e| e.size  }
print "Arreglo con cantidad de caracteres de cada elemento: \n#{array_aux} \n"


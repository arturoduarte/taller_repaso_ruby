# Se tiene un string del tipo 
datos = "1,2,7,1,3,5,3.4,9,1"
# Calcular el promedio

datos = datos.split(",")
acumulador = 0
contador = 0
datos.each do |elementos|
	acumulador += elementos.to_f
	contador +=1
end

puts "El promedio es = #{'%.2f' % (acumulador/contador)}"

# Calcular la moda (o sea mostrar el número que más se repite)

most_frequent_item = datos.max_by{ |i| datos.count( i ) }
puts "El número que mas aparece es el = #{most_frequent_item}"



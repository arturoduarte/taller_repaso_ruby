# Se tiene un hash con el inventario de un negocio de computadores.
inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
# Se pide:

# Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.
opcion = 0
while opcion != 5 
	puts "Presione 1 para Agregar un item con stock "  
	puts "Presione 2 para Visualizar el stock total"
	puts "Presione 3 para Visualizar el item con mayor stock"
	puts "Presione 4 para Consultar item"
	puts "Presione 5 para Salir"
	opcion = gets.chomp.to_i
	system("clear")
	case opcion
		when 1
			puts "Ingrese nuevo Item con Stock, separados por(,)"
			item_nuevo = gets.chomp
			item_nuevo = item_nuevo.split(',')
			inventario[(item_nuevo.first).to_sym] = item_nuevo.last.to_i
			print "Se agregó satisfactoriamente el item = #{item_nuevo}!!!!\n"
			puts "El estado actual del inventario es el siguiente: #{inventario} \n\n\n"
			
			when 2
				stock = 0
				inventario.each do |k,v|
					stock += v
				end
				system("clear")
				puts "El stock total de todos los productos es: #{stock} \n\n\n"
				
				when 3
					mayor = inventario.select {|k,v| v == inventario.values.max }
					print "El item con mayor cantidad de stock es:  #{mayor.keys} con #{mayor.values} unidades \n\n\n"
					
					when 4
						puts "Ingrese producto a buscar"
						producto = gets.chomp
						respuesta = inventario.has_key?(producto.to_sym)  
						puts respuesta ? "SI" : "NO"
						puts "\n\n\n"
						
						when 5
							puts "Adios!!"
							
						else
							puts "Opcion equivocada!!!, Vuelva a Ingresar...\n\n"
						end
						
					end
class Car
	@@t_instances = 0
	@@q_instances = 0
	
	def self.t_instances
		@@t_instances
	end
	
	def self.q_instances
		@@q_instances
	end
end

class T < Car
	def initialize
		@@t_instances += 1
	end
end

class Q < Car
	def initialize
		@@q_instances += 1
	end
end

10.times { T.new }
15.times { Q.new }

puts "La cantidad de instancias de T = #{Car.t_instances}"
puts "La cantidad de instancias de Q = #{Car.q_instances}"
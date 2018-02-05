class T
	def method1
		rand(1..10)
	end
 end

 # Q herede de T
 class Q < T
	 attr_accessor :aleatorio
	 def initialize
		 @aleatorio = method1
	 end

 end

 puts Q.new().aleatorio
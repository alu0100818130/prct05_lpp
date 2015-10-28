class Operador
	attr_accessor :a, :b, :c
	def initialize(a, b)
		puts "Introducción de los números fraccionarios..."
    		@a.x, @a.y, @b.x, @b.y = a.x, a.y, b.x, b.y
		puts "Números registrados con éxito"
  	end
	def multiplicar(a,b,c)
		c.x=a.x*b.x
		c.y=a.y*b.y
		puts "El resultado de la multiplicación de los dos número fraccionarios es:"
	end
end	

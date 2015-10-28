class Fracciones
	attr_reader :a, :b
	
	def initialize (a, b)
		raise TypeError, "ERROR: El denominador no puede ser cero" if b.eql? 0
		x = Maximocomundivisior(a, b)
    	@a = a / x
    	@b = b / x
	end
	
	def Maximocomundivisior(f,g)
    	g != 0 ? f: Maximocomundivisior(g, f%g)
  	end
  	
  	def Minimocomunmultiplo(f,g)
  		#z??
  		g = f / Maximocomundivisior(f,g) * g	
  	end
  	
  	def + (other)
	  mincmul = Minimocomunmultiplo(@b, other.b)
		aux1 = (mincmul/@b) * @a 
		aux2 = (mincmul/other.b)*other.a 
		Fracciones.new(aux1 + aux2, mincmul)
	end
	
	def -(other)
	  self + (-other)
	  #-----------------También sirve:-------------------
	  # mincmul = Minimocomunmultiplo(@b, other.b)
	  # aux1 = (mincmul/@b) * @a 
	  # aux2 = (mincmul/other.b)*other.b 
	  # Fracciones.new(aux1 - aux2, mincmul)
	  #--------------------------------------------------	
	end
	
	def *(other)
		Fracciones.new( @a * other.a, @b * other.b)
	end

	def /(other)
	  	Fracciones.new( @a * other.b, @b * other.a)
	end
	
	def to_s
	  "#@a/#@b"
	end
	
end
class Paciente < Individuo
	attr_reader :w, :size, :c_cint, :c_cad
	def initialize(name, surn, gen, age, w, size, c_cint, c_cad)
		super(name,surn,gen,age)
		@w, @size, @c_cint, @c_cad = w, size, c_cint, c_cad
	end
	def to_s
		
	end
	def imc
		size2 = @size*@size
		@imc = @w/size2
		@imc.truncate(2).to_f
	end
	def fat_p
		@fatp = 1.2*imc + 0.23*age - 10.8*gen - 5.4
		@fatp.truncate(2).to_f
	end
	def rcc
		@rcc = @c_cint.to_f / @c_cad.to_f
		@rcc.truncate(2)
	end

	def pl_tricip(x, y, z)
		@pl_tr = x + y + z
		@pl_tr /= 3
		@pl_tr.truncate(2)
	end
	
	def pl_bicip(x, y, z)
		@pl_bic = x + y + z
		@pl_bic /= 3
		@pl_bic.truncate(2)
	end 

	def pl_subesc(x, y, z)
		@pl_sub = x + y + z
		@pl_sub /= 3
		@pl_sub.truncate(2)

	end

	def pl_supral(x, y, z)
		@pl_sup = x + y + z
		@pl_sup /= 3
		@pl_sup.truncate(2)
	end
end





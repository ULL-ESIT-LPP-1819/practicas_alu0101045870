# Clase Paciente, hereda características de Individuo para proveer datos médicos adicionales
# y facilitar la evaluación de la salud del mismo.
#
# @author Fernando González Petit
# @since 0.1.0
# 
# @attr_reader w [Float] Peso
# 	       size [Float] Altura en metros
# 	       c_cint [Float] Circunferencia de la cintura en cm
# 	       c_cad [Float] Circunferencia de cadera en cm
#
# Contiene utilidades del módulo Comparable
#
class Paciente < Individuo
	
	include Comparable
	
	attr_reader :w, :size, :c_cint, :c_cad
	
	# Definición del método abstracto en Comparable 
	def <=>(anOther)
		imc <=> anOther.imc
	end
	
	# Inicializa atributos clase padre y propios de la clase Paciente
	def initialize(name, surn, gen, age, w, size, c_cint, c_cad)
		super(name,surn,gen,age)
		@w, @size, @c_cint, @c_cad = w, size, c_cint, c_cad
	end

	# Salida formateada, separada por comas, de los datos registrados para el paciente
	#
	# @return [String] Cadena con datos de paciente
	def to_s
		a = super.to_s
		return a + "(#{@w},#{@size},#{@c_cint},#{@c_cad})"		
	end

	# Cálculo del índice de masa corporal del individuo
	def imc
		size2 = @size*@size
		@imc = @w/size2
		@imc.truncate(2).to_f
	end

	# Cálculo del porcentaje de grasa
	def fat_p
		@fatp = 1.2*imc + 0.23*age - 10.8*gen - 5.4
		@fatp.truncate(2).to_f
	end

	# Cálculo del ratio cintura-cadera
	def rcc
		@rcc = @c_cint.to_f / @c_cad.to_f
		@rcc.truncate(2)
	end

	# Media entre mediciones de los pliegues tricipitales
	def pl_tricip(x, y, z)
		@pl_tr = x + y + z
		@pl_tr /= 3
		@pl_tr.truncate(2)
	end
	

	# Media entre mediciones de los pliegues bicipitales
	def pl_bicip(x, y, z)
		@pl_bic = x + y + z
		@pl_bic /= 3
		@pl_bic.truncate(2)
	end 

	# Media entre mediciones de los pliegues subescapulares
	def pl_subesc(x, y, z)
		@pl_sub = x + y + z
		@pl_sub /= 3
		@pl_sub.truncate(2)

	end
	
	# Media entre mediciones de los pliegues supralumbares
	def pl_supral(x, y, z)
		@pl_sup = x + y + z
		@pl_sup /= 3
		@pl_sup.truncate(2)
	end
end





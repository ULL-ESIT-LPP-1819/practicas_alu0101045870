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

	# Requerimiento energético de individuo en estado sedentario o de reposo
	def gasto_ene_basal
		if(@gen == 0)
			@g_ene_b = (10 * @w) + (6.25 * @size) - (5 * @age) - 161
		else
			@g_ene_b = (10 * @w) + (6.25 * @size) - (5 * @age) - 5
		end
		@g_ene_b.truncate(2)
	end

	# Gasto energético requerido para procesar los alimentos
	def efecto_term
		@ef_ter = (gasto_ene_basal * 0.10).truncate(2)
	end

	# A partir del factor de actividad física
	def gasto_act_fis(f_act_f)
		@g_act_f = (gasto_ene_basal * f_act_f).truncate(2)
	end

	# A partir de los valores en gasto energético basal, efecto termógeno y gasto actividad
	# física
	def gasto_ene_total(f_act_f)
		(gasto_ene_basal + efecto_term + gasto_act_fis(f_act_f)).round(2)
	end

	def calorias_suficientes(f_act_f, calorias)
		porc_l = gasto_ene_total(f_act_f) - (gasto_ene_total(f_act_f) * 0.10)
		porc_u = gasto_ene_total(f_act_f) + (gasto_ene_total(f_act_f) * 0.10)
		if(calorias.between?(porc_l, porc_u))
			return true
		else
			return false
		end
	end
end





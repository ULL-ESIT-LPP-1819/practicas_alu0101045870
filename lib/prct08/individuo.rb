# Clase Individuo, representando a un ser humano con datos poco descriptivos
#  
# # @author Fernando González Petit
# # @since 0.1.0
#
# # @attr_reader name: [String] Primer nombre de persona
# 		 surn: [String] Nombre de familia
# 		 gen:  [Boolean] [true] Hombre
# 		 		 [false] Mujer
#
class Individuo
	attr_reader :name, :surn, :gen, :age
	def initialize(name, surn, gen, age)
		@name, @surn, @gen, @age = name, surn, gen, age
	end

	# Salida formateada de atributos de clase
	# @return Datos separados por comas
	def to_s
		"(#{@name},#{@surn},#{@gen},#{@age})"
	end
end

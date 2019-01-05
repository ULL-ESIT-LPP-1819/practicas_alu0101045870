# Clase Menu, destinada a almacenar y a representar el menú de un día y definir el DSL para cumplimentación directa e intuitiva de la comida de un día de la semana.
#
# @author Fernando González Petit
# @since 0.1.0
#
class Menu
	attr_accessor :day, :title, :breakfast, :lunch, :dinner, :min, :max

	# Initialize para la clase Menu
	#
	# @author Fernando González Petit
	#
	# @public
	#
	def initialize(day, &block)
		@day = day
		@title = "Menú: " + day   	#default

		@min = 0
		@max = 0
		@breakfast = []
		@lunch = []
		@dinner = []

		if block_given?
			if block.arity == 1
				yield self
			else 
				instance_eval(&block)
			end
		end

	end

	def titulo(titl)
		@title = titl
	end

	def ingesta(options = {})
		@min = options[:min] if options[:min]
	        @max = options[:max] if options[:max]	
	end

end


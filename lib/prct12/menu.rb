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

	def desayuno(options = {})
		descripcion = "Comida"
		porcion = ""
		cant = 0
		g = 0
		hid = 0
		p = 0
		fib = 0
		sal = 0

		descripcion = options[:descripcion] if options[:descripcion]
		porcion = "(#{options[:porcion]})" if options[:porcion]
		descripcion << porcion
		
		cant = options[:gramos] if options[:gramos]

		g = options[:grasas] if options[:grasas]

		hid = options[:carbohidratos] if options[:carbohidratos]
		p = options[:proteinas] if options[:proteinas]
		fib = options[:fibra] if options[:fibra]

		sal = options[:sal] if options[:sal]

		des = Etiqueta.new(descripcion, cant, 1, g, 0, 0, 0, hid, 0, 0, 0, fib, p, sal, 0, 0)

		@breakfast << des
	end


	def almuerzo(options = {})
		descripcion = "Comida"	
		porcion = ""
		cant = 0
		g = 0
		hid = 0
		p = 0
		fib = 0
		sal = 0

		descripcion = options[:descripcion] if options[:descripcion]
		porcion = "(#{options[:porcion]})" if options[:porcion]
		descripcion << porcion
		
		cant = options[:gramos] if options[:gramos]

		g = options[:grasas] if options[:grasas]

		hid = options[:carbohidratos] if options[:carbohidratos]
		p = options[:proteinas] if options[:proteinas]
		fib = options[:fibra] if options[:fibra]

		sal = options[:sal] if options[:sal]

		alm = Etiqueta.new(descripcion, cant, 1, g, 0, 0, 0, hid, 0, 0, 0, fib, p, sal, 0, 0)

		@lunch << alm

	end

	
	def cena(options = {})
		descripcion = "Comida"
		porcion = ""
		cant = 0
		g = 0
		hid = 0
		p = 0
		fib = 0
		sal = 0

		descripcion = options[:descripcion] if options[:descripcion]
		porcion = "(#{options[:porcion]})" if options[:porcion]
		descripcion << porcion
		
		cant = options[:gramos] if options[:gramos]

		g = options[:grasas] if options[:grasas]

		hid = options[:carbohidratos] if options[:carbohidratos]
		p = options[:proteinas] if options[:proteinas]
		fib = options[:fibra] if options[:fibra]

		sal = options[:sal] if options[:sal]

		cen = Etiqueta.new(descripcion, cant, 1, g, 0, 0, 0, hid, 0, 0, 0, fib, p, sal, 0, 0)

		@dinner << cen
	end

	def to_s
		output = @day
		output << "#{'	' * 3} #{@title} "
		output << "\n#{'=' * 40 } "
		output << "\n\t\t\t\tgrasas\tcarbohidratos\t\tproteinas\tfibra\tsal\tvalor energetico"
		output << "\nDesayuno\n"
		@breakfast.each do |etiqueta|
			output << "#{etiqueta.name}\t\t"
			output << "#{etiqueta.g}\t"
			output << "#{etiqueta.hid}\t"
			output << "#{etiqueta.pr}\t"
			output << "#{etiqueta.fib}\t"
			output << "#{etiqueta.sal}\t"
			output << "#{etiqueta.val_ene_kcal}\t"
		end

		output << "\n\nAlmuerzo\n"		
		@lunch.each do |etiqueta|
			output << "#{etiqueta.name}\t\t"
			output << "#{etiqueta.g}\t"
			output << "#{etiqueta.hid}\t"
			output << "#{etiqueta.pr}\t"
			output << "#{etiqueta.fib}\t"
			output << "#{etiqueta.sal}\t"
			output << "#{etiqueta.val_ene_kcal}\t"
		end

		output << "\n\nCena\n"
		@dinner.each do |etiqueta|
			output << "#{etiqueta.name}\t\t"
			output << "#{etiqueta.g}\t"
			output << "#{etiqueta.hid}\t"
			output << "#{etiqueta.pr}\t"
			output << "#{etiqueta.fib}\t"
			output << "#{etiqueta.sal}\t"
			output << "#{etiqueta.val_ene_kcal}\t"
		end

		output
	end

end


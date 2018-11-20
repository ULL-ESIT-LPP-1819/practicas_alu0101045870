class Individuo
	attr_reader :name, :surn, :gen, :age
	def initialize(name, surn, gen, age)
		@name, @surn, @gen, @age = name, surn, gen, age
	end
	def to_s
		"(#{@name},#{@surn},#{@gen},#{@age})"
	end
end

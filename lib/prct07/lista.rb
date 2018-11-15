class Lista
	attr_accessor :head, :tail, :size

	Node = Struct.new(:value, :next, :prev)

	def initialize
		@head = nil
		@tail = nil
		@size = 0
	end

	def get_head
	  @head
	end

	def get_tail
	  @tail
	end

	def get_size
	  @size
	end

	private :head, :tail, :size



end

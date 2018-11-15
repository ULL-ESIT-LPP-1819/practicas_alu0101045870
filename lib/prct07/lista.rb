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

        def insert_head(etiqueta)
	    #prev va a ser vacio siempre
	    nod = Node.new(etiqueta, nil, nil)
	    if(@head != nil)
	      nod.next = @head 
	    else
	      @tail = nod	    
	    end
	    @head = nod

	    @size += 1

	    nil
	end

	def insert_tail(etiqueta)
	    #next va a ser vacio siempre
	    nod = Node.new(etiqueta, nil, nil)
	    if(@tail != nil)
	      nod.prev = @tail
	    else
	      @head = nod
	    end
	    @tail = nod

	    @size += 1

	    nil
	end

	def item_at(pos)
           if(pos <= size)	    
		var = 1
		pointer = @head
	   
	       	while var < pos
		    pointer = pointer.next
		    var += 1    
	       	end
	   else
	     return nil
	   end

	   pointer.value
	end

	private :head, :tail, :size



end

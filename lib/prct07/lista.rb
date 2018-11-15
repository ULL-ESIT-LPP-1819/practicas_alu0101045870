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

	def empty
	  return (size == 0)
	end

        def insert_head(etiqueta)
	    #prev va a ser vacio siempre
	    nod = Node.new(etiqueta, nil, nil)
	    
	    if self.empty
	       nod.next = nil
	       nod.prev = nil
	       @head = nod
	       @tail = nod
	    else
	       nod.next = @head
      	       nod.prev = nil
	       @head.prev = nod
	       @head = nod	       
	    end

 	    @size += 1

	    nil  
	end

	def insert_tail(etiqueta)
	    #next va a ser vacio siempre
	    nod = Node.new(etiqueta, nil, nil)
	    
	    if self.empty
	       nod.next = nil
	       nod.prev = nil
	       @head = nod
	       @tail = nod
	    else
	       nod.prev = @tail
      	       nod.next = nil
	       @tail.next = nod
	       @tail = nod	       
	    end

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

	def item_at_t(pos)
	
           if(pos <= size)	    
		var = 1
		pointer = @tail
	   
	       	while var < pos
		    pointer = pointer.prev
		    var += 1    
	       	end
	   else
	     return nil
	   end

	   pointer.value
	end

	def extract_head
	  if(@size > 0)
	    v = @head
	    @head = @head.next
	    
	    if(@head == nil)
	        @tail = nil
	    end
	    
	    @size -= 1

	    return v.value
	  end

          nil
	end

	def extract_tail
	  if(@size > 0)
	    v = @tail
	    @tail = @tail.prev
	    
	    if(@tail == nil)
	        @head = nil
	    end
	    
	    @size -= 1

	    return v.value
	  end

	  nil
	end

	private :head, :tail, :size



end

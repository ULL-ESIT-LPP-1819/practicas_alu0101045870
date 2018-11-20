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

        def to_s
		cad = ""
		pointer = @head
		while !(pointer.nil?)
		  cad += pointer.value.to_s
		  cad += "\n"
		  pointer = pointer.next
		end
	 	cad
	end

	def clasify
	    sol = []
	    ans1 = []
	    ans2 = []

	    pointer = @head

	    while !(pointer.nil?)
	        
		if(pointer.value.sal < 6)
		   ans1.append(pointer.value.sal)
		else
		   ans2.append(pointer.value.sal)
		end

		pointer = pointer.next
	    end
	
	    sol.append(ans1,ans2)
	end

	def clasify_p8
	    sol = []
	    low_w = []
	    adq_w = []
	    ove_w = []
	    ob1_w = []
	    ob2_w = []

	    pointer = @head

	    while !(pointer.nil?)
		    val = pointer.value.imc
		    if(val < 18.5)
			    low_w.append(pointer.value)
		    elsif(val > 18.5 and val < 24.9)
			    adq_w.append(pointer.value) 
		    elsif(val > 25.0 and val < 29.9) 
			    ove_w.append(pointer.value)
		    elsif(val > 30.0 and val < 34.9)
			    ob1_w.append(pointer.value)
		    elsif(val > 40) 
			    ob2_w.append(pointer.value)
		    end

		    pointer = pointer.next
	    end
	    
	    sol.append(low_w,adq_w,ove_w,ob1_w,ob2_w)
	end

	private :head, :tail, :size

end

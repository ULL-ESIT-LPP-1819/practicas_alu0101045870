# Clase Lista, representando una DLL (double linked list) para el almacenamiento de objetos en Ruby, con sus 
# funcionalidades esenciales 
#  
# # @author Fernando González Petit
# # @since 0.1.0
# # @attr_reader head: [Node] Referencia a la primera posición de la lista
# 		 tail: [Node] Referencia a la última posición de la lista
# 		 size: [Integer] Tamaño actual de la lista
#
# Incluye utilidades del módulo Enumerable
class Lista

	include Enumerable
	attr_accessor :head, :tail, :size

	#Struct Node. Actúa como nodo dentro de la lista
	#Contiene un :value -> Objeto en el nodo, 
	#	     :next  -> Referencia al siguiente nodo en la lista
	#	     :prev  -> Referencia al anterior nodo en la lista
	Node = Struct.new(:value, :next, :prev)

	# Método each para utilidades de enumerable 
	#
	# @author Fernando González Petit
	#
	# @see http://ruby-doc.org/core-2.1.4/Enumerable.html
	#
	# @public
	#
	# [yield] Objeto dentro del nodo en la posición del recorrido secuencial de la lista
	def each
		pointer = @head
		while !(pointer.nil?)
			yield pointer.value 
			pointer = pointer.next
		end
	end

	# Las listas se inicializan vacías y con tamaño cero
	def initialize
		@head = nil
		@tail = nil
		@size = 0
	end

	# @return Head actual
	def get_head
	  @head
	end

	# @return Tail actual
	def get_tail
	  @tail
	end

	# @return Size actual
	def get_size
	  @size
	end
        
	# @return [Boolean, true]  Si el tamaño es 0
	#  	  [Boolean, false] Si el tamaño es mayor que 0
	def empty
	  return (size == 0)
	end

	# Método que inserta el elemento etiqueta a la cabeza de la lista
	#
	# @author Fernando González Petit
	#
	# @param etiqueta Cualquier objeto
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


	# Método que inserta el elemento etiqueta a la cola de la lista
	#
	# @author Fernando González Petit
	#
	# @param etiqueta Cualquier objeto
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

	# Método que obtiene el elemento en la posición pos de la lista
	#
	# @author Fernando González Petit
	#
	# @param pos [Integer] posición en la lista
	#
	# @return Elemento seleccionado
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

	# Duplicación del método item_at pero realizando la búsqueda desde la cola
	#
	# @see Lista::item_at
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

	# Equivalente al pop_head. Extrae el elemento en la cabeza de la lista
	#
	# @return Objeto en el nodo extraído, en caso de haberlo
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

	# Equivalente al pop_tail. Extrae el elemento en la cola de la lista
	#
	# @return Objeto en el nodo extraído, en caso de haberlo
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

	# Devuelve en forma de cadena una salida formateada de todos los elementos en la lista por orden
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
	
	# Método específico para uso de listas de objetos de la clase Etiqueta
	# Ordena las Etiquetas en la lista por sus valores aceptables de sal
	#
	# @see Etiqueta
	#
	# @return Un array bidimensional - Contiene dos vectores, cada uno con las Etiquetas con mucha/poca sal, respectivamente
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

	# Método específico para uso de listas de objetos de la clase Paciente
	# Clasifica en función de su peso a Individuos con historial médico (Paciente)
	#
	# @see Paciente
	#
	# @return Array bidimensional con los pacientes ordenados por su peso en distintos vectores
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

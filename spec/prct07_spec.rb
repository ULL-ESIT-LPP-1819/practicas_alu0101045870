RSpec.describe Lista do
  before :each do
    @et1 = Etiqueta.new("Cacaolat", 200, 1, 0.5, 0.3, 0.2, 0.1, 4.3, 4.1, 0, 0.2, 3, 2.7, 0.11, 0.15, 0.1)
    @et2 = Etiqueta.new("Nesquick", 215, 1, 3.8, 2.3, 1.5, 0.8, 21.8, 21.1, 0.9, 3, 1, 7.1, 0.15, 0.1, 0.12)
    @et3 = Etiqueta.new("Colacao",  220, 1, 3.7, 2.5, 1.7, 0.8, 20.1, 19.6, 0.9, 3, 1, 7.2, 0.17, 0.13, 0.13)
    @et4 = Etiqueta.new("Caocola",  225, 1, 3.5, 2.2, 1.5, 0.7, 22.0, 21.1, 0.8, 3, 1, 7.3, 0.18, 0.9, 0.13)  
    @et5 = Etiqueta.new("Colquick", 210, 1, 3.6, 2.4, 1.2, 0.7, 21.5, 21.0, 0.9, 3, 1, 7.1, 0.14, 0.1, 0.12)
    @list = Lista.new 
  end

  describe "# Inicializacion de atributps" do
    it "Se inicializa correctamente head" do
	expect(@list.get_head).to be nil
    end
    it "Se inicializa correctamente tail" do
    	expect(@list.get_tail).to be nil
    end
    it "Se inicializa correctamente el tamaño" do
        expect(@list.get_size).to eq(0)
    end
  end

  describe "# Operaciones básicas de la lista" do
    
    context "Se inserta correctamente un nodo" do
      it "En head" do
      	@list.insert_head(@et1)
	expect(@list.get_size).to eq(1)
	expect(@list.get_head.value).to eq(@et1)
      end  
      it "En tail" do
	@list.insert_tail(@et1)
	expect(@list.get_size).to eq(1)
	expect(@list.get_tail.value).to eq(@et1)
      end

      it "Inserciones concurrentes por head" do
       
        @list.insert_head(@et2)
        @list.insert_head(@et3)
	@list.insert_head(@et4)

	expect(@list.item_at(1)).to eq(@et4)
        expect(@list.item_at(2)).to eq(@et3)
        expect(@list.item_at(3)).to eq(@et2)
      end

    end

    it "Se puede acceder a la posicion x" do
      @list.insert_head(@et1)  
      @list.insert_head(@et2)  
      @list.insert_head(@et3)  
      @list.insert_head(@et4)  
      @list.insert_head(@et5)

      expect(@list.get_size).to eq(5)
      expect(@list.item_at(3)).to eq(@et3)
      expect(@list.item_at_t(3)).to eq(@et3)  
    end

    context "Se extrae un nodo correctamente" do
      it "Desde head" do
 	 @list.insert_head(@et1)    #Sabemos que funciona
	 @list.insert_head(@et2)    #Sabemos que funciona. Orden et2 -> et1

	 expect(@list.extract_head).to eq(@et2)
	 expect(@list.get_size).to eq(1)
	 expect(@list.get_head.value).to eq(@et1)
	 expect(@list.get_tail.value).to eq(@et1)
      end
      it "Desde tail" do
 	 @list.insert_head(@et1)    #Sabemos que funciona
	 @list.insert_head(@et2)    #Sabemos que funciona. Orden et2 -> et1

	 expect(@list.extract_tail).to eq(@et1)
	 expect(@list.get_size).to eq(1)
	 expect(@list.get_head.value).to eq(@et2)
	 expect(@list.get_tail.value).to eq(@et2)
      end
      it "Desde posicion" do
         expect(true).to eq(false)
      end
    end

    it "La lista se muestra por pantalla correctamente(to_s)" do
         expect(true).to eq(false)
    end
  end

  describe "# Procedimiento de clasificacion por gramos de sal" do
    
    it "El método funciona" do
         expect(true).to eq(false)
    end

  end
end

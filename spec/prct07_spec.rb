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
end

RSpec.describe Prct06 do
  it "has a version number" do
    expect(Prct06::VERSION).not_to be nil
  end

end

RSpec.describe Etiqueta do
  before :each do
    @et1 = Etiqueta.new("Cacaolat",0.5,0.3,0.2,0.1,4.3,4.1,0,0.2,3,2.7,0.11)
  end

  describe "# inicializacion de atributos" do
    it "Se almacena correctamente el nombre del articulo" do
      expect(@et1.name).to eq "Cacaolat"
    end
  end

end

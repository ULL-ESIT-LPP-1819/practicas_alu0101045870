RSpec.describe Prct06 do
  it "has a version number" do
    expect(Prct06::VERSION).not_to be nil
  end

end

RSpec.describe Etiqueta do
  before :each do
    @et1 = Etiqueta.new("Cacaolat",200,1,0.5,0.3,0.2,0.1,4.3,4.1,0,0.2,3,2.7,0.11,0.15,0.1)
  end

  describe "# inicializacion de atributos" do
    it "Se almacena correctamente el nombre del articulo" do
      expect(@et1.name).to eq "Cacaolat"
    end
    it "Se almacena correctamente la cantidad por porcion en gramos" do
      expect(@et1.cant).to eq(200)
    end
    it "Se almacena correctamente el numero de porciones" do
      expect(@et1.npor).to eq(1)
    end
    it "Se almacena correctamente el valor de grasas" do
      expect(@et1.g).to eq(0.5)
    end
    it "Se almacena correctamente el valor de las grasas saturadas" do
      expect(@et1.sat).to eq(0.3)
    end
    it "Se almacena correctamente el valor de las grasas monosaturadas" do
      expect(@et1.msat).to eq(0.2)
    end
    it "Se almacena correctamente el valor de las grasas polisaturadas" do
      expect(@et1.psat).to eq(0.1)
    end
    it "Se almacena correctamente el valor de los hidratos de carbono" do
      expect(@et1.hid).to eq(4.3)
    end
    it "Se almacena correctamente el valor de los hidratos de los cuales son azucares" do
      expect(@et1.a).to eq(4.1)
    end
    it "Se almacena correctamente el valor de los polialcoholes" do
      expect(@et1.palc).to eq(0)
    end
    it "Se almacena correctamente el valor de los almidones" do
      expect(@et1.alm).to eq(0.2)
    end
    it "Se almacena correctamente el valor de la fibra alimentaria" do
      expect(@et1.fib).to eq(3)
    end
    it "Se almacena correctamente el valor de las proteinas" do
      expect(@et1.pr).to eq(2.7)
    end
    it "Se almacena correctamente el valor de las sales" do
      expect(@et1.sal).to eq(0.11)
    end
    it "Se almacena correctamente el valor de las vitaminas" do
      expect(@et1.vit).to eq(0.15)
    end
    it "Se almacena correctamente el valor de los minerales" do
      expect(@et1.min).to eq(0.1)  
    end
  
  end
  
  describe "# Valor energetico " do
    context "Para elementos individuales" do	  
      it "Se calcula correctamente el valor energetico de las grasas" do
	expect(@et1.val_gras_kj).to eq(18.5)
	expect(@et1.val_gras_kcal).to eq(4.5)
      end
      it "Se calcula correctamente el valor energetico de los hidratos" do
	expect(@et1.val_hidr_kj).to eq(73.1)
	expect(@et1.val_hidr_kcal).to eq(17.2)
      end
      it "Se calcula correctamente el valor energetico de la fibra alim." do
        expect(@et1.val_fib_kj).to eq(24)
        expect(@et1.val_fib_kcal).to eq(6)
      end
      it "Se calcula correctamente el valor energetico de las proteinas" do
	expect(@et1.val_prot_kj).to eq(45.9)
        expect(@et1.val_prot_kcal).to eq(10.8)
      end
      it "Se calcula correctamente el valor energetico de las sales" do
	expect(@et1.val_sal_kj).to eq(2.75)
	expect(@et1.val_sal_kcal).to eq(0.66)	
      end
    end
    context "Para el total" do
      it "Se calcula el valor energetico total del producto" do
	expect(@et1.val_ene_kj).to eq(164.25)
	expect(@et1.val_ene_kcal).to eq(39.16)
      end
    end
  end

  describe "# Calculo de valor energetico por porciones" do
    it "Se realiza el calculo de gramos por porcion correctamente" do
      expect(@et1.g_porcion).to eq(200)
    end
    it "Se realiza el calculo del valor energetico por porcion en kJ" do
      expect(@et1.val_ene_por_kj).to eq(164.25)
    end
    it "Se realiza el calculo del valor energetico por porcion en kcal" do
      expect(@et1.val_ene_por_kcal).to eq(39.16)
    end
  end  

end

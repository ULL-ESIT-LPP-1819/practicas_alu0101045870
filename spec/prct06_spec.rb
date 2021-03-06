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
    context "Para elementos 100g" do	  
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
    context "Para el total 100g" do
      it "Se calcula el valor energetico total del producto" do
	expect(@et1.val_ene_kj).to eq(164.25)
	expect(@et1.val_ene_kcal).to eq(39.16)
      end
    end
  end

  describe "# Calculo de valor energetico por porciones" do
    context "Calculo de gramos para elementos individuales" do
      it "Se realiza el calculo de gramos por porcion correctamente" do
        expect(@et1.g_porcion).to eq(200)
      end
      it "Se realiza el calculo de grasas correctamente" do
        expect(@et1.gras_por).to eq(1)
      end
      it "Se realiza el calculo de grasas saturadas correctamente" do
        expect(@et1.gsat_por).to eq(0.6)
      end
      it "Se realiza el calculo de grasas monosaturadas correctamente" do
        expect(@et1.msat_por).to eq(0.4)
      end
      it "Se realiza el calculo de grasas polisaturadas correctamente" do
        expect(@et1.psat_por).to eq(0.2)
      end
      it "Se realiza el calculo de hidratos correctamente" do
        expect(@et1.hidr_por).to eq(8.6)
      end
      it "Se realiza el calculo de azucares correctamente" do
        expect(@et1.a_por).to eq(8.2)
      end
      it "Se realiza el calculo de polialcoholes correctamente" do
        expect(@et1.polia_por).to eq(0)
      end
      it "Se realiza el calculo de almidones correctamente" do
        expect(@et1.alm_por).to eq(0.4)
      end
      it "Se realiza el calculo de fibra alimenticia correctamente "do
        expect(@et1.fib_por).to eq(6)
      end
      it "Se realiza el calculo de proteinas correctamente" do
        expect(@et1.prot_por).to eq(5.4)
      end
      it "Se realiza el calculo de sales correctamente" do
        expect(@et1.sal_por).to eq(0.22)
      end
      it "Se realiza el calculo de vitaminas correctamente" do
        expect(@et1.vit_por).to eq(0.3)
      end
      it "Se realiza el calculo de minerales correctamente" do
  	expect(@et1.min_por).to eq(0.2)
      end
    end
    context "Valor energetico elementos individuales" do
      it "Se realiza el calculo del valor energetico para grasas" do
        expect(@et1.gras_por_kj).to eq(37)
	expect(@et1.gras_por_kcal).to eq(9)
      end
      it "Se realiza el calculo del valor energetico para hidratos" do
	expect(@et1.hidr_por_kj).to eq(146.2)
	expect(@et1.hidr_por_kcal).to eq(34.4)
      end
      it "Se realiza el calculo del valor energetico para la fibra alimentaria" do
        expect(@et1.fib_por_kj).to eq(48)
	expect(@et1.fib_por_kcal).to eq(12)
      end
      it "Se realiza el calculo del valor energetico para las proteinas" do
	expect(@et1.prot_por_kj).to eq(91.8)
	expect(@et1.prot_por_kcal).to eq(21.6)
      end
      it "Se realiza el calculo del valor energetico para las sales" do
	expect(@et1.sal_por_kj).to eq(5.5)
	expect(@et1.sal_por_kcal).to eq(1.32)
      end
    end
    context "Valor energetico total" do
      it "Se realiza el calculo del valor energetico por porcion en kJ" do
	expect(@et1.val_ene_por_kj).to eq(328.5)
      end
      it "Se realiza el calculo del valor energetico por porcion en kcal" do
	expect(@et1.val_ene_por_kcal).to eq(78.32)
      end
    end
  end  

  describe "# Calculo del porcentaje respecto a la Ingesta recomendada (%IR)" do
    context "Para 100 g" do
      it "Se realiza el calculo de la IR para el valor energetico" do
	      expect(@et1.ir_val_ene).to eq(1.96)
      end
      it "Se realiza el calculo de la IR para las grasas totales" do
	      expect(@et1.ir_gras).to eq(0.71)
      end
      it "Se realiza el calculo de la IR para las grasas saturadas" do
	      expect(@et1.ir_gsat).to eq(1.5)
      end
      it "Se realiza el calculo de la IR para hidratos de carbono" do
	      expect(@et1.ir_hidr).to eq(1.65)
      end
      it "Se realiza el calculo de la IR para los azucares" do
	      expect(@et1.ir_a).to eq(4.56)
      end
      it "Se realiza el calculo de la IR para las proteinas" do
	      expect(@et1.ir_prot).to eq(5.4)
      end
      it "Se realiza el calculo de la IR para las sales" do
	      expect(@et1.ir_sal).to eq(1.83)
      end
    end
    context "Para las porciones" do
      it "Se realiza el calculo de la IR para el valor energetico" do
	      expect(@et1.ir_val_ene_por).to eq(3.91)
      end
      it "Se realiza el calculo de la IR para las grasas " do 
	      expect(@et1.ir_gras_por).to eq(1.43)
      end
      it "Se realiza el calculo de la IR para acidos grasos saturados" do
	      expect(@et1.ir_gsat_por).to eq(3)
      end
      it "Se realiza el calculo de la IR para hidratos" do
              expect(@et1.ir_hidr_por).to eq(3.31)
      end
      it "Se realiza el calculo de la IR para azucares" do
	      expect(@et1.ir_a_por).to eq(9.11)
      end
      it "Se realiza el calculo de la IR para las proteinas" do
	      expect(@et1.ir_prot_por).to eq(10.8)
      end
      it "Se realiza el calculo de la IR para las sales" do
	      expect(@et1.ir_sal_por).to eq(3.67)
      end      
    end
  end

  describe "# PRUEBA DEFINITIVA: to_s (salida formateada)" do
    it "Se muestra la etiqueta " do
    expect(@et1.to_s).to eq("-----------------------------------------------------------------------------\n" +
			    "            | Por 100g/ml | IR por 100g/ml | Porcion de " + @et1.g_porcion.to_s + " g | IR porcion\n" +
			    "Val.Ene kJ  | " + @et1.val_ene_kj.to_s + "  | " + @et1.ir_val_ene.to_s + "   | " + @et1.val_ene_por_kj.to_s + "   | " + @et1.ir_val_ene_por.to_s + "\n" +
			    "        kcal| " + @et1.val_ene_kcal.to_s + "   |        | " + @et1.val_ene_por_kcal.to_s + "   |       \n" + 
			    "Grasas      | " + @et1.g.to_s + "     | " + @et1.ir_gras.to_s + "   | " + @et1.gras_por.to_s + "     | " +  @et1.ir_gras_por.to_s + " \n" +
			    " -Saturadas | " + @et1.sat.to_s + "     | " + @et1.ir_gsat.to_s + "    | " + @et1.gsat_por.to_s + "     | " + @et1.ir_gsat_por.to_s + " \n" +
			    " -Monosat.  | " + @et1.msat.to_s + "     |        | " + @et1.msat_por.to_s + "     | \n" +
			    " -Polisat.  | " + @et1.psat.to_s + "     |        | " + @et1.psat_por.to_s + "     | \n" + 
			    " Hidratos   | " + @et1.hid.to_s + "     | " + @et1.ir_hidr.to_s + "   | " + @et1.hidr_por.to_s + "     | " + @et1.ir_hidr_por.to_s + "\n" +
			    " -Azucares  | " + @et1.a.to_s + "     | " + @et1.ir_a.to_s + "   | " + @et1.a_por.to_s + "     | " + @et1.ir_a_por.to_s + "\n" +
			    " -Polialc.  | " + @et1.palc.to_s + "       |        | " + @et1.polia_por.to_s + "       | \n" +
			    " -Almid.    | " + @et1.alm.to_s + "     |        | " + @et1.alm_por.to_s + "     | \n" +
			    " Fibra alim | " + @et1.fib.to_s + "       |        | " + @et1.fib_por.to_s + "       | \n" +
			    " Proteinas  | " + @et1.pr.to_s + "     | " + @et1.ir_prot.to_s + "    | " + @et1.prot_por.to_s + "     | " + @et1.ir_prot_por.to_s + "\n" +
			    " Sales      | " + @et1.sal.to_s + "    | " + @et1.ir_sal.to_s + "   | " + @et1.sal_por.to_s + "    | " + @et1.ir_sal_por.to_s + "\n" +
			    " Vit/Min    | " + @et1.vit.to_s + "/" + @et1.min.to_s + "   |       |         | \n")
    end
  end
end


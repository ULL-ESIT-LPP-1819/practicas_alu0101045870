RSpec.describe Etiqueta do

	before :all do
    		@et1 = Etiqueta.new("Cacaolat", 200, 1, 0.5, 0.3, 0.2, 0.1, 4.3, 4.1 , 0, 0.2, 3, 2.7, 0.11, 0.15, 0.1)
    		@et2 = Etiqueta.new("Nesquick", 215, 1, 3.8, 2.3, 1.5, 0.8, 21.8, 21.1, 0.9, 3, 1, 7.1, 0.15, 0.1, 0.12)
    		@et3 = Etiqueta.new("Colacao",  220, 1, 3.7, 2.5, 1.7, 0.8, 20.1, 19.6, 0.9, 3, 1, 7.2, 0.17, 0.13, 0.13)
    		@et4 = Etiqueta.new("Caocola",  225, 1, 3.5, 2.2, 1.5, 0.7, 22.0, 21.1, 0.8, 3, 1, 7.3, 0.18, 0.9, 0.13)  
		@et5 = Etiqueta.new("POLLO EMPANAO EXTREME", 300, 2, 13, 10, 5, 3, 23.5, 12, 4, 3, 1, 18, 0.18, 0.9, 0.13)  

	end

	describe "Valores energéticos" do
		it "De las etiquetas" do
			expect(@et1.val_ene_kj).to eq(164.25)
			expect(@et2.val_ene_kj).to eq(643.65)
			expect(@et3.val_ene_kj).to eq(613.25)
			expect(@et4.val_ene_kj).to eq(640.1)
			expect(@et5.val_ene_kj).to eq(1199)
		
		end
	end

end

RSpec.describe Lista do

	before :all do
		
		@p1 = Paciente.new("Fernando", "González", 1, 20, 72, 1.78, 82, 92)
		@p2 = Paciente.new("Jorge", "González", 1, 20, 104, 1.85, 80, 91)
		@p3 = Paciente.new("Miriam","Rodríguez", 0, 24, 52, 1.57, 64, 86)
		@p4 = Paciente.new("Kevin", "García", 1, 20, 90, 1.78, 102, 107)
		@p5 = Paciente.new("Rey", "Misterio", 0, 43, 92, 1.65, 85, 92) 	
	
    		@et1 = Etiqueta.new("Cacaolat", 200, 1, 0.5, 0.3, 0.2, 0.1, 4.3, 4.1 , 0, 0.2, 3, 2.7, 0.11, 0.15, 0.1)
    		@et2 = Etiqueta.new("Nesquick", 215, 1, 3.8, 2.3, 1.5, 0.8, 21.8, 21.1, 0.9, 3, 1, 7.1, 0.15, 0.1, 0.12)
    		@et3 = Etiqueta.new("Colacao",  220, 1, 3.7, 2.5, 1.7, 0.8, 20.1, 19.6, 0.9, 3, 1, 7.2, 0.17, 0.13, 0.13)
    		@et4 = Etiqueta.new("Caocola",  225, 1, 3.5, 2.2, 1.5, 0.7, 22.0, 21.1, 0.8, 3, 1, 7.3, 0.18, 0.9, 0.13)  
		@et5 = Etiqueta.new("POLLO EMPANAO EXTREME", 300, 2, 13, 10, 5, 3, 23.5, 12, 4, 3, 1, 18, 0.18, 0.9, 0.13)  

		@menu1 = [@et1, @et2, @et3, @et4]
		@menu2 = [@et1, @et3, @et4, @et5]
		@menu3 = [@et4, @et5]
		@menu4 = [@et1, @et4, @et5]
		@menu5 = [@et3]
		@menu6 = [@et1, @et5, @et3]
		@menu7 = [@et1, @et2, @et3, @et4, @et5]
		@menu8 = [@et2]
		@menu9 = [@et1, @et2]
		@menuX = [@et1]

		@array = [@menu1, @menu2, @menu3, @menu4, @menu5, @menu6, @menu7, @menu8, @menu9, @menuX]

		@list = Lista.new
		
		@list.insert_head(@p1)
		@list.insert_head(@p2)
		@list.insert_head(@p3)
		@list.insert_head(@p4)
		@list.insert_head(@p5)
	end

	describe "# Contenedores" do
		context "Tipos correctos en array de menús" do
			it "Tipos menú" do
				expect(@menu1.instance_of?(Array)).to be true
				expect(@menu2.instance_of?(Array)).to be true
				expect(@menu3.instance_of?(Array)).to be true
				expect(@menu4.instance_of?(Array)).to be true
				expect(@menu5.instance_of?(Array)).to be true
				expect(@menu6.instance_of?(Array)).to be true
				expect(@menu7.instance_of?(Array)).to be true
				expect(@menu8.instance_of?(Array)).to be true
				expect(@menu9.instance_of?(Array)).to be true
				expect(@menuX.instance_of?(Array)).to be true
			end

			it "Tipo Lista y Array de menús" do
				expect(@array.instance_of?(Array)).to be true
				expect(@list.instance_of?(Lista)).to be true
			end

		end
	end

	describe "# Métodos de ordenación" do
		it "Sort para array " do	
			array_ordenado = @array.sort do
			|x,y| x.reduce(0){|sum1, i| (sum1 + i.val_ene_kj)} <=> y.reduce(0){|sum2, j| (sum2 + j.val_ene_kj)}
				
			end
		
		end

		it "Sort para lista " do
		
			lista_ordenada = @list.sort do
			|x,y| x.gasto_ene_total(0.12) <=> y.gasto_ene_total(0.12)
			end 
		

		end
	end

end

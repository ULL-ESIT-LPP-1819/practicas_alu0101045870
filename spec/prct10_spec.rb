RSpec.describe Paciente do
	before :all do
		@p1 = Paciente.new("Fernando", "González", 1, 20, 72, 1.78, 82, 92)
	end

	describe " # Pruebas gasto actividad física: " do
		it " Gasto energético basal" do
			expect(@p1.gasto_ene_basal).to eq(626.12)
		end

		it " Efecto termógeno" do
			expect(@p1.efecto_term).to eq(62.61)	
		end

		it " Gasto por actividad física: " do
			expect(@p1.gasto_act_fis(0.12)).to eq(75.13)
		end
		
		it " Gasto energético total: " do
			expect(@p1.gasto_ene_total(0.12)).to eq(763.86)
		end
	end
end

RSpec.describe Lista do

	before :all do
		@lpac = Lista.new
		@menu = Lista.new
		
		@p1 = Paciente.new("Fernando", "González", 1, 20, 72, 1.78, 82, 92)
		@p2 = Paciente.new("Jorge", "González", 1, 20, 104, 1.85, 80, 91)
		@p3 = Paciente.new("Miriam","Rodríguez", 0, 24, 52, 1.57, 64, 86)
		@p4 = Paciente.new("Kevin", "García", 1, 20, 90, 1.78, 102, 107)
		@p5 = Paciente.new("Rey", "Misterio", 0, 43, 92, 1.65, 85, 92) 	
	
    		@et1 = Etiqueta.new("Cacaolat", 200, 1, 0.5, 0.3, 0.2, 0.1, 4.3, 4.1 , 0, 0.2, 3, 2.7, 0.11, 0.15, 0.1)
    		@et2 = Etiqueta.new("Nesquick", 215, 1, 3.8, 2.3, 1.5, 0.8, 21.8, 21.1, 0.9, 3, 1, 7.1, 0.15, 0.1, 0.12)
    		@et3 = Etiqueta.new("Colacao",  220, 1, 3.7, 2.5, 1.7, 0.8, 20.1, 19.6, 0.9, 3, 1, 7.2, 0.17, 0.13, 0.13)
    		@et4 = Etiqueta.new("Caocola",  225, 1, 3.5, 2.2, 1.5, 0.7, 22.0, 21.1, 0.8, 3, 1, 7.3, 0.18, 0.9, 0.13)  

		@lpac.insert_head(@p1)
		@lpac.insert_head(@p2)
		@lpac.insert_head(@p3)
		@lpac.insert_head(@p4)
		@lpac.insert_head(@p5)

		@menu.insert_tail(@et1)
		@menu.insert_tail(@et2)
		@menu.insert_tail(@et3)
		@menu.insert_tail(@et4)

	end

	describe " # Recuperar total de valor energético del menú: " do
		it "Sumatorio de elementos del menú" do
			expect(@menu.reduce(0){|sum, num| (sum + num.val_ene_kcal).round(2) }).to eq(489.16)		
		end

			
	end
end

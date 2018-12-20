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
		@menu1 = Lista.new
		@menu2 = Lista.new
		@menu3 = Lista.new
		@menu4 = Lista.new
		@menu5 = Lista.new

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


		@lpac.insert_head(@p1)
		@lpac.insert_head(@p2)
		@lpac.insert_head(@p3)
		@lpac.insert_head(@p4)
		@lpac.insert_head(@p5)

		@menu1.insert_tail(@et1)
		@menu1.insert_tail(@et2)
		@menu1.insert_tail(@et3)
		@menu1.insert_tail(@et4)
		@menu1.insert_tail(@et5)

		@menu2.insert_tail(@et1)
		@menu2.insert_tail(@et3)
		@menu2.insert_tail(@et5)
		
		@menu3.insert_tail(@et2)
		@menu3.insert_tail(@et5)

		@menu4.insert_tail(@et2)
		@menu4.insert_tail(@et3)
		@menu4.insert_tail(@et4)
		@menu4.insert_tail(@et5)

		@menu5.insert_tail(@et4)
		@menu5.insert_tail(@et5)
	
	end

	describe " # Recuperar total de valor energético del menú: " do
		it "Sumatorio de elementos del menú" do
			@calorias_menu = @menu1.reduce(0){|sum, num| (sum + num.val_ene_kcal).round(2) }
			expect(@calorias_menu).to eq(775.24)		
		end

		it "Comprobación de rango en el menú para usuario" do
			@calorias_menu = @menu1.reduce(0){|sum, num| (sum + num.val_ene_kcal).round(2) }
			expect(@lpac.select{|i| i.calorias_suficientes(0.12, @calorias_menu) }).to eq([@p1])			
		end	
	end

	describe " # Comprobar menú asociado para pacientes" do

		it "Creacion de las combinaciones paciente-menú asignables" do
		@lmenu = Lista.new
		@lmenu.insert_tail(@menu1)
		@lmenu.insert_tail(@menu2)
		@lmenu.insert_tail(@menu3)
		@lmenu.insert_tail(@menu4)
		@lmenu.insert_tail(@menu5)
		
		cal_por_menu = @lmenu.collect{ |i| i.reduce(0){|sum,num| (sum + num.val_ene_kcal).round(2) } }
		
		expect(cal_por_menu).to eq([775.24, 470.76, 438.78, 736.08, 437.86])
	
		pac_menu1 = @lpac.select{|i| i.calorias_suficientes(0.12, cal_por_menu[0]) } 
		pac_menu2 = @lpac.select{|i| i.calorias_suficientes(0.12, cal_por_menu[1]) } 
		pac_menu3 = @lpac.select{|i| i.calorias_suficientes(0.12, cal_por_menu[2]) } 
		pac_menu4 = @lpac.select{|i| i.calorias_suficientes(0.12, cal_por_menu[3]) } 
		pac_menu5 = @lpac.select{|i| i.calorias_suficientes(0.12, cal_por_menu[4]) } 

		expect(pac_menu1).to eq([@p1])
		expect(pac_menu2).to eq([])
		expect(pac_menu3).to eq([])
		expect(pac_menu4).to eq([@p5, @p1])
		expect(pac_menu5).to eq([])
		

		end
	end
end

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

		@menu1 = Lista.new
		@menu2 = Lista.new
		@menu3 = Lista.new
		@menu4 = Lista.new
		@menu5 = Lista.new
		@menu6 = Lista.new
		@menu7 = Lista.new
		@menu8 = Lista.new
		@menu9 = Lista.new
		@menuX = Lista.new

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

		@menu6.insert_tail(@et5)

		@menu7.insert_tail(@et4)

		@menu8.insert_tail(@et3)

		@menu9.insert_tail(@et2)

		@menuX.insert_tail(@et1)

		@array = [@menu1, @menu2, @menu3, @menu4, @menu5, @menu6, @menu7, @menu8, @menu9, @menuX]

	end

end

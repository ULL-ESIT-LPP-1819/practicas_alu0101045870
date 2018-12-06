RSpec.describe Paciente do

	before :all do
		@p1 = Paciente.new("Fernando", "González", 1, 20, 72, 1.78, 82, 92)
		@p2 = Paciente.new("Jorge", "González", 1, 20, 104, 1.85, 80, 91)
		@p3 = Paciente.new("Miriam","Rodríguez", 0, 24, 52, 1.57, 64, 86)
		@p4 = Paciente.new("Kevin", "García", 1, 20, 90, 1.78, 102, 107)
		@p5 = Paciente.new("Rey", "Misterio", 0, 43, 92, 1.65, 85, 92) 	
	end

	describe "Las instancias de Paciente son comparables" do
		it "Mayor que [ > ]: " do
			expect(@p1 > @p2).to be false	
		end
		it "Menor que [ < ]: " do
			expect(@p1 < @p2).to be true	
		end
		it "Igual que [ == ]: " do
			expect(@p1 == @p2).to be false
			expect(@p1 == @p1).to be true
		end
		it "Mayor o igual [ >= ]: " do
			expect(@p1 >= @p2).to be false
		end
		it "Menor o igual [ <= ]: " do
			expect(@p1 <= @p2).to be true
		end
		it "Between?: " do
			expect(@p2.between?(@p1,@p4)).to be false
		end
	end

end

RSpec.describe Etiqueta do

  	before :all do
    		@et1 = Etiqueta.new("Cacaolat", 200, 1, 0.5, 0.3, 0.2, 0.1, 4.3, 4.1 , 0, 0.2, 3, 2.7, 0.11, 0.15, 0.1)
    		@et2 = Etiqueta.new("Nesquick", 215, 1, 3.8, 2.3, 1.5, 0.8, 21.8, 21.1, 0.9, 3, 1, 7.1, 0.15, 0.1, 0.12)
    		@et3 = Etiqueta.new("Colacao",  220, 1, 3.7, 2.5, 1.7, 0.8, 20.1, 19.6, 0.9, 3, 1, 7.2, 0.17, 0.13, 0.13)
    		@et4 = Etiqueta.new("Caocola",  225, 1, 3.5, 2.2, 1.5, 0.7, 22.0, 21.1, 0.8, 3, 1, 7.3, 0.18, 0.9, 0.13)  
	end

	describe "Las instancias de Etiqueta son comparables" do
		it "Mayor que [ > ]: " do
			expect(@et1 > @et2).to be false
		end
		it "Menor que [ < ]: " do
			expect(@et1 < @et2).to be true
		end
		it "Igual que [ == ]: " do
			expect(@et1 == @et1).to be true
		end
		it "Mayor o igual [ >= ]: " do
			expect(@et1 >= @et2).to be false
		end
		it "Menor o igual [ <= ]: " do
			expect(@et1 <= @et2).to be true
		end
		it "Between?: " do
			expect(@et3.between?(@et1,@et2)).to be true
		end
	end

end

RSpec.describe Lista do
	
	before :all do
		@paclist = Lista.new
		@p1 = Paciente.new("Fernando", "González", 1, 20, 72, 1.78, 82, 92)
		@p2 = Paciente.new("Jorge", "González", 1, 20, 104, 1.85, 80, 91)
		@p3 = Paciente.new("Miriam","Rodríguez", 0, 24, 52, 1.57, 64, 86)
		@paclist.insert_head(@p1)
		@paclist.insert_head(@p2)
		@paclist.insert_head(@p3)

		@etlist = Lista.new		
    		@et1 = Etiqueta.new("Cacaolat", 200, 1, 0.5, 0.3, 0.2, 0.1, 4.3, 4.1 , 0, 0.2, 3, 2.7, 0.11, 0.15, 0.1)
    		@et2 = Etiqueta.new("Nesquick", 215, 1, 3.8, 2.3, 1.5, 0.8, 21.8, 21.1, 0.9, 3, 1, 7.1, 0.15, 0.1, 0.12)
    		@et3 = Etiqueta.new("Colacao",  220, 1, 3.7, 2.5, 1.7, 0.8, 20.1, 19.6, 0.9, 3, 1, 7.2, 0.17, 0.13, 0.13)
		@etlist.insert_head(@et1)
		@etlist.insert_head(@et2)
		@etlist.insert_head(@et3)
	end

	describe "Las instancias de Lista son enumerables" do
		it "Método each " do
			@etlist.each{ |i| puts "* #{i.to_s}" }
			@paclist.each{ |i| puts "* #{i.to_s}" }			
		end
	end

	describe "Los metodos asociados a orden funcionan correctamente" do
			it "Método collect" do 
				@etlist.collect{ |i| puts " * #{i.name}" }
				@paclist.collect{ |i| puts " * #{i.name}" }				
			end
			it "Método select" do
				@etlist.select{ |i| i.val_ene_kj > 80 }
				@paclist.select{ |i| i.imc > 24.9 }
			end
			it "Método min" do
				@etlist.min
				@paclist.min	
			end
			it "Método max" do
				@etlist.max
				@paclist.max
			end
			it "Método sort" do
				@etlist.sort
				@paclist.sort
			end
	end
end

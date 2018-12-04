RSpec.describe Paciente do

	before :all do
		@list = Lista.new
		@p1 = Paciente.new("Fernando", "González", 1, 20, 72, 1.78, 82, 92)
		@p2 = Paciente.new("Jorge", "González", 1, 20, 104, 1.85, 80, 91)
		@p3 = Paciente.new("Miriam","Rodríguez", 0, 24, 52, 1.57, 64, 86)
		@p4 = Paciente.new("Kevin", "García", 1, 20, 90, 1.78, 102, 107)
		@p5 = Paciente.new("Rey", "Misterio", 0, 43, 92, 1.65, 85, 92) 	
	end
	
	describe "#Pruebas de inicializacion: " do
		context "Clase padre: " do
			it "Attr_accessor" do
				expect(@p1.name).to eq("Fernando")
				expect(@p1.surn).to eq("González")
				expect(@p1.age).to eq(20)
				expect(@p1.gen).to eq(1)
			end
		end
		context "Clase hija: " do
			it "Attr_accessor" do
				expect(@p1.w).to eq(72)
				expect(@p1.size).to eq(1.78)
				expect(@p1.c_cint).to eq(82)
				expect(@p1.c_cad).to eq(92)
			end
		end
	end

	describe "#Pruebas de herencia y tipado: " do
		context "Tipo de objeto: " do
		   it "Paciente:" do
			expect(@p1.respond_to?('imc')).to be true
			expect(@p1.respond_to?('to_s')).to be true
		   end
		   it "Lista:" do
		   	expect(@list.respond_to?('extract_head')).to be true
			expect(@list.respond_to?('insert_tail')).to be true
		   end
		   it "Individuo:" do
		        @i1 = Individuo.new("Fernando", "Gonzalez", 1, 20)
			expect(@i1.respond_to?('imc')).to be false
			expect(@i1.respond_to?('to_s')).to be true
		   end
		end
		context "Clase de objeto: " do
		   it "Paciente:" do	
		  	expect(@p1.class == Paciente).to be true
		  	expect(@p1.instance_of?Paciente).to be true
		   	expect(@p1.instance_of?Individuo).to be false
		   end
		   it "Lista:" do
		  	expect(@list.class == Lista).to be true
		  	expect(@list.instance_of?Lista).to be true
		   end
		   it "Individuo:" do
		        @i1 = Individuo.new("Fernando", "Gonzalez", 1, 20)
		  	expect(@i1.class == Individuo).to be true
		  	expect(@i1.instance_of?Individuo).to be true
		   	expect(@i1.instance_of?Paciente).to be false
		   end
		end
		context "Pertenece a la jerarquía: " do
		   it "Paciente:" do
		        expect(@p1.is_a?Paciente).to be true
			expect(@p1.is_a?Individuo).to be true
			expect(@p1.is_a?Object).to be true
			expect(@p1.is_a?BasicObject).to be true
		   end
		   it "Lista:" do
		        expect(@list.is_a?Lista).to be true
			expect(@list.is_a?Object).to be true
			expect(@list.is_a?BasicObject).to be true
		   end
		   it "Individuo:" do
		        @i1 = Individuo.new("Fernando", "Gonzalez", 1, 20)
		        expect(@i1.is_a?Individuo).to be true
			expect(@i1.is_a?Object).to be true
			expect(@i1.is_a?BasicObject).to be true
		   end	   
		end
	end

	describe "#Pruebas de clasificación en lista: " do
		it "La clasificación es correcta" do
			@list.insert_head(@p1)
			@list.insert_head(@p2)
			@list.insert_head(@p3)
			@list.insert_head(@p4)
			@list.insert_head(@p5)
			res = @list.clasify_p8
	
			expect(res[0].size).to eq(0)
			expect(res[1].size).to eq(2)
			expect(res[2].size).to eq(1)
			expect(res[3].size).to eq(2)
			expect(res[4].size).to eq(0)
					
		end			
	end
	
	describe "#Prueba del to_s: " do
		it "to_s" do

		expect(@p1.to_s).to eq("(Fernando,González,1,20)(72,1.78,82,92)")
		end
	end	
end

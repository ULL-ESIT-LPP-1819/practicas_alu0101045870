RSpec.describe Paciente do

	before :all do
		@p1 = Paciente.new("Fernando", "González", "Hombre", 20, 72, 1.78, 82, 92)
	end
	
	describe "#Pruebas de inicializacion: " do
		context "Clase padre: " do
			it "Attr_accessor" do
				expect(@p1.name).to eq("Fernando")
				expect(@p1.surn).to eq("González")
				expect(@p1.age).to eq(20)
				expect(@p1.gen).to eq("Hombre")
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

	
end

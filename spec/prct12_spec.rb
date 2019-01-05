RSpec.describe Menu do

	before :all do

	end

	describe "Inicialización de la clase" do
		it "Sin bloque" do
			menu_lunes = Menu.new("Lunes")
			expect(menu_lunes.day).to eq("Lunes")
			expect(menu_lunes.min).to eq(0)
			expect(menu_lunes.max).to eq(0)
			expect(menu_lunes.title).to eq("Menú: Lunes")
			expect(menu_lunes.breakfast).to eq([])
			expect(menu_lunes.lunch).to eq([])
			expect(menu_lunes.dinner).to eq([])
		end
	
	end
end

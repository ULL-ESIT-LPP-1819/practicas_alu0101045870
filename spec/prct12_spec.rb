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

		it "Con bloque" do
			menu_lunes = Menu.new("Lunes") do
				titulo	"Bajo en calorías"
				ingesta	:min => 30, :max => 35
			end

			expect(menu_lunes.title).to eq("Bajo en calorías")
			expect(menu_lunes.min).to eq(30)
			expect(menu_lunes.max).to eq(35)
		end
	
	end
end

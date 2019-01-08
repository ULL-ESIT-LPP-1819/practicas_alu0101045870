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
				desayuno :descripcion => "Pan de trigo integral",
					 :porcion => "1 rodaja",
					 :gramos => 100,
					 :grasas => 3.3,
					 :carbohidratos => 54.0,
					 :proteinas => 11.0,
					 :fibra => 2.3,
					 :sal => 0.06
				desayuno :descripcion => "Actimel",
					 :porcion => "1 rodaja",
					 :gramos => 100,
					 :grasas => 3.4,
					 :carbohidratos => 4.4,
					 :proteinas => 3.6,
					 :sal => 0.05
				almuerzo :descripcion => "Arroz",
					 :porcion => "1 taza",
					 :gramos => 100,
					 :grasas => 0.9,
					 :carbohidratos => 81.6,
					 :proteinas => 6.67,
					 :fibra => 1.4,
					 :sal => 0.04
				almuerzo :descripcion => "Lentejas",
					 :porcion => "1/2 cucharón",
					 :grasas => 0.4,
					 :carbohidratos => 20.0, 
					 :proteinas => 9.0,
					 :fibra => 8.0,
					 :sal => 0.02
				almuerzo :descripcion => "Naranja",
					 :porcion => "1 pieza",
					 :gramos => 100,
					 :grasas => 0.12,
					 :carbohidratos => 11.75,
					 :proteinas => 0.94,
					 :fibra => 2.4
				cena	 :descripcion => "Leche entera hacendado",
					 :porcion => "1 vaso",
					 :grasas => 3.6,
					 :carbohidratos => 4.6,
					 :proteinas => 3.1,
					 :sal => 0.13

			end

			expect(menu_lunes.title).to eq("Bajo en calorías")
			expect(menu_lunes.min).to eq(30)
			expect(menu_lunes.max).to eq(35)

			expect(menu_lunes.breakfast.empty?).to be false
			expect(menu_lunes.breakfast[0].name).to eq("Pan de trigo integral(1 rodaja)")
		
		
			output = menu_lunes.to_s

			expect(output).to eq(output)

		end
	
	end



end

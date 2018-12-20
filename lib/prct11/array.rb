class Array

	def my_sort_for
		result = []
		result.replace(self)

		n = result.length

		loop do
			swapped = false

			for i in 0...(n-1)
				if (result[i].reduce(0){|sum, j| sum + j.val_ene_kj} > result[i+1].reduce(0){|sum, j| sum + j.val_ene_kj})
					result[i], result[i+1] = result[i+1], result[i]		
					swapped = true
				end
			end

			break if not swapped
		end

		result

	end

	def my_sort_each
		result = []
		result.replace(self)

		n = result.length - 1

		loop do
			swapped = false

			n.times.each do |i| 
				if (result[i].reduce(0){|sum, j| sum + j.val_ene_kj} > result[i+1].reduce(0){|sum, j| sum + j.val_ene_kj})
					result[i], result[i+1] = result[i+1], result[i]		
					swapped = true
				end
			end

			break if not swapped
		end
		
		result
	end
end

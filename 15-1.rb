ingredients = DATA.map{ |line| line.scan(/-?\d+/).map(&:to_i) }
puts ingredients.repeated_combination(100).map{ |combi|
	ingredients.map{ |ingredient|
		ingredient.map{ |attribute| 
			attribute * combi.count(ingredient)			
		}
	}.transpose.map{ |x| 
		score = x.inject(:+)
		score < 0 ? 0 : score
	}[0..3].inject(:*)
}.max

__END__
Sprinkles: capacity 2, durability 0, flavor -2, texture 0, calories 3
Butterscotch: capacity 0, durability 5, flavor -3, texture 0, calories 3
Chocolate: capacity 0, durability 0, flavor 5, texture -1, calories 8
Candy: capacity 0, durability -1, flavor 0, texture 5, calories 8
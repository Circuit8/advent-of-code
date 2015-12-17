require 'pry'
require 'awesome_print'
require 'colorize'

distances = Hash.new{ |hash, key| hash[key] = Hash.new(&hash.default_proc) }

DATA.each do |line|
	split_line = line.split(" ")
	distances[split_line[0]][split_line[2]] = split_line[4].to_i
	distances[split_line[2]][split_line[0]] = split_line[4].to_i
end		

distances = distances.keys.permutation.map do |permutation|
	permutation.each_cons(2).inject(0) do |c, (a, b)|
		c + distances[a][b]
	end
end

ap distances.sort.first
ap distances.sort.last	

__END__
Faerun to Tristram = 65
Faerun to Tambi = 129
Faerun to Norrath = 144
Faerun to Snowdin = 71
Faerun to Straylight = 137
Faerun to AlphaCentauri = 3
Faerun to Arbre = 149
Tristram to Tambi = 63
Tristram to Norrath = 4
Tristram to Snowdin = 105
Tristram to Straylight = 125
Tristram to AlphaCentauri = 55
Tristram to Arbre = 14
Tambi to Norrath = 68
Tambi to Snowdin = 52
Tambi to Straylight = 65
Tambi to AlphaCentauri = 22
Tambi to Arbre = 143
Norrath to Snowdin = 8
Norrath to Straylight = 23
Norrath to AlphaCentauri = 136
Norrath to Arbre = 115
Snowdin to Straylight = 101
Snowdin to AlphaCentauri = 84
Snowdin to Arbre = 96
Straylight to AlphaCentauri = 107
Straylight to Arbre = 14
AlphaCentauri to Arbre = 46
def parse line
	split_line  = line.split " "
	speed		   = split_line[3].to_i
	sprint_time = split_line[6].to_i
	rest_time   = split_line[-2].to_i

	progress = Array.new(sprint_time, speed) + Array.new(rest_time, 0)
	progress.cycle.first(2503).inject(:+)
end

puts DATA.map{ |line| parse(line) }.max

__END__
Rudolph can fly 22 km/s for 8 seconds, but then must rest for 165 seconds.
Cupid can fly 8 km/s for 17 seconds, but then must rest for 114 seconds.
Prancer can fly 18 km/s for 6 seconds, but then must rest for 103 seconds.
Donner can fly 25 km/s for 6 seconds, but then must rest for 145 seconds.
Dasher can fly 11 km/s for 12 seconds, but then must rest for 125 seconds.
Comet can fly 21 km/s for 6 seconds, but then must rest for 121 seconds.
Blitzen can fly 18 km/s for 3 seconds, but then must rest for 50 seconds.
Vixen can fly 20 km/s for 4 seconds, but then must rest for 75 seconds.
Dancer can fly 7 km/s for 20 seconds, but then must rest for 119 seconds.
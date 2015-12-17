def next_iteration sequence
	grouped_sequence = sequence.to_s.scan( /((.)\2*)/ ).map(&:first)
	grouped_sequence.inject("") do |new_sequence, group|
		new_sequence << group.size.to_s << group[0].to_s
	end
end

sequence = "1113122113"

50.times do
	sequence = next_iteration sequence
end

p sequence.size
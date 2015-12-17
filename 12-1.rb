require 'pry'
require 'json'
require 'awesome_print'

def traverse data
	data.each do |value|
		next if value.class == Hash && value.has_value?("red")
		traverse(value) if value.respond_to?(:each)
		$total += value if value.class == Fixnum
	end
end

data = File.open("12-1-input.txt", "rb").read
puts data.scan(/-?\d+/).map(&:to_i).inject(:+)

data = JSON.parse File.open("12-1-input.txt", "rb").read
$total = 0
ap traverse(data)

puts $total
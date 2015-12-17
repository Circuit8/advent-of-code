require 'digest'
key = "yzbqklnj"
hash = ""
num = 0
while hash[0..5] != "000000" do
	hash = Digest::MD5.hexdigest( key + num.to_s )
	num += 1
end

puts num - 1
puts hash
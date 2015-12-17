containers = DATA.readlines.map(&:chomp).map(&:to_i)

combinations = (0..containers.size).map{ |i|
    containers.combination(i).select{ |com|
        com.inject(:+) == 150
    }.size
}
puts (combinations - [0]).first


__END__
50
44
11
49
42
46
18
32
26
40
21
7
18
43
10
47
36
24
22
40
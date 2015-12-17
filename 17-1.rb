containers = DATA.readlines.map(&:chomp).map(&:to_i)

puts (0..containers.size).inject{ |total, i|
    total + containers.combination(i).select{ |com|
        com.inject(:+) == 150
    }.size
}

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
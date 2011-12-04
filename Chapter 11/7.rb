#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (7)  请从存放有数值1~100共100个元素的ary数组中，像 1~10、11~20、21~30这样，一口气取出10 个，分10次存入result数组。请完成下面程序???的部分。

EOF

puts <<EOF
ary = [数值1~100所构成的数组]
result = Array.new
10.times {|i|
  result << ary[???]
}
EOF

ary = Array.new(100) {|i| i+1 }
result = Array.new
10.times {|i|
  result << ary[i*10, 10]
  puts "第#{i+1}次"
  print 'result = '
  p result
  puts
}

print "\n按Enter退出……"
gets
exit


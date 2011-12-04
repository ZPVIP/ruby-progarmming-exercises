#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (2) 请以（1）的结果建立一个新数组，每个元素都是原来的一百倍。并试着不要建立新数组，将原先的数组取代为所有元素都是原先的一百倍。

EOF

arr = Array.new(100) {|i| i+1 }

puts "处理前数组"
print "arr = "
p arr
puts

arr.collect! {|item| item * 100 }

puts "处理后数组"
print "arr = "
p arr

print "\n按Enter退出……"
gets
exit


#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (6) rand 方法可以用来产生随机数，如调用“rand(n)”就会产生 0 到 n-1 之间的 一个数。请使用这个rand方法，打乱数组（1）成不规则的顺序。

EOF

arr = Array.new(100) {|i| i+1 }
puts '打乱前：'
print 'arr = '
p arr
puts

arr.sort_by! { rand(arr.length) }
puts '打乱后：'
print 'arr = '
p arr
puts

print "\n按Enter退出……"
gets
exit


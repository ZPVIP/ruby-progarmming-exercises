#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (5) 请使用下面两种方法试着求得数组所有元素中数值的和。
        使用 Array#each 方法
        使用 Array#inject 方法

EOF

arr = Array.new(10) {|i| i+1 }
print 'arr = '
p arr
puts

sum = 0
arr.each {|item| sum += item }
puts 'Array#each'
puts "sum = #{sum}"
puts

sum = 0
sum = arr.inject(0) {|memo, item| memo + item }
puts 'Array#inject'
puts "sum = #{sum}"


print "\n按Enter退出……"
gets
exit


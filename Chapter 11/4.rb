#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (4) 请使用下面3种方法尝试逆转数组（1）。
        使用 Array#reverse 方法
        使用 Array#sort 方法
        使用 Array#sort_by 方法

EOF

arr = Array.new(100) {|i| i+1 }
print 'arr = '
p arr
puts

arr2 = arr.reverse
puts 'Array#reverse'
print 'arr2 = '
p arr2
puts

arr3 = arr.sort {|a,b| b <=> a }
puts 'Array#sort'
print 'arr3 = '
p arr3
puts

arr4 = arr.sort_by {|item| -item }
puts 'Array#sort_by'
print 'arr4 = '
p arr4
puts


print "\n按Enter退出……"
gets
exit


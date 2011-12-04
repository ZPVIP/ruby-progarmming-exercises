#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (3)  从数组（1）取出3 的倍数，建立新的数组。然后请试着不要建立新数组，直接删除不是3 的倍数的元素。

EOF

arr = Array.new(100) {|i| i+1 }
print 'arr = '
p arr
puts

arr2 = arr.reject {|item| item % 3 != 0 }
print 'arr2 = '
p arr2
puts

arr.reject! {|item| item % 3 != 0 }
print 'arr = '
p arr
puts

print "\n按Enter退出……"
gets
exit


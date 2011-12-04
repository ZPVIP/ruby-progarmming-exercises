#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (1) 请建立一个存放整数1到100的数组

EOF

arr = Array.new(100) {|i| i+1 }
print "arr = "
p arr

print "\n按Enter退出……"
gets
exit


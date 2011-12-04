#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (4)  定义一个prime?(num)方法用来检查整数num是否为质数。所谓质数，是“除了自己与1以为，无法被其他任何整数所整除的数”。例如，1位数的质数有 “2、3、5、7”等4个。

EOF

def prime?(num)
  2.upto(num - 1) do |i|
    return false if num % i == 0
  end
  true
end

print "请输入一个整数："
num = gets.to_i
puts
puts prime?(num) ? "#{num}是一个质数" : "#{num}不是一个质数"

print "\n按Enter退出……"
gets
exit


#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (3)  rand方法可以用来产生随机数。比如调用“rand(n)”就会产生 0 到 n-1 之间的一个数。请使用这个rand方法，写出一个可以随机返回 1 到 6 之间数值的dice方法。

EOF

def dice
  rand(6) + 1
end

puts '1至6之间的随机数：'
10.times do
  10.times { print "#{dice}  " }
  print "\n"
end

print "\n按Enter退出……"
gets
exit


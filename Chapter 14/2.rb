#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (2) 请使用gsub方法，将“"面向对象难死了！ 反正就是难死了！"”这个字符串取代成“"面向对象简单极了！ 反正就是简单极了！"”。

EOF

str = "面向对象难死了！ 反正就是难死了！"

puts str
puts str.gsub(/难死了/, '简单极了')


print "\n按Enter退出……"
gets
exit


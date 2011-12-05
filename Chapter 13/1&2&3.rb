#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (1) 请定义一个Hash wday 存放英文与中文的对应关系。
      p wday['sunday']      #=>   '星期日'
      p wday['monday']      #=>   '星期一'
      p wday['saturday']    #=>   '星期六'

    (2) 使用Hash提供的方法，计算（1）这个Hash的键值对数量。

    (3) 使用each方法将（1）这个Hash以下面的形式输出在画面上。
      "sunday" 是星期日。
      "monday" 是星期一。
      ……

EOF

wday = {
  sunday:     '星期日',
  monday:     '星期一',
  tuesday:    '星期二',
  wednesday:  '星期三',
  thursday:   '星期四',
  friday:     '星期五',
  saturday:   '星期六'
}

puts '(1)'
print 'wday = '
p wday
puts

puts '(2)'
print 'wday.size = '
p wday.size
puts

puts '(3)'
wday.each {|key, value| puts "\"#{key}\" 是#{value}。" }

print "\n按Enter退出……"
gets
exit


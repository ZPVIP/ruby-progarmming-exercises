#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (3) 使用Date类求得这个月第一天与最后一天是星期几，显示出下面这样的月历：

         November 2006
      Su Mo Tu We Th Fr Sa
                1  2  3  4
       5  6  7  8  9 10 11
      12 13 14 15 16 17 18
      19 20 21 22 23 24 25
      26 27 28 29 30

EOF

require 'date'

def print_calendar(date, output = $stdout)

  first_day = Date.new(date.year, date.month, 1)
   last_day = Date.new(date.year, date.month, -1)

  title = date.strftime('%B %Y')
  output.puts(' ' * ((20 - title.length) / 2).floor + title)
  output.puts('Su Mo Tu We Th Fr Sa')


  weeknum = 0
  if first_day.monday?
    weeknum = 1
  elsif first_day.tuesday?
    weeknum = 2
  elsif first_day.wednesday?
    weeknum = 3
  elsif first_day.thursday?
    weeknum = 4
  elsif first_day.friday?
    weeknum = 5
  elsif first_day.saturday?
    weeknum = 6
  end

  output.print("   " * (weeknum))

  1.upto(last_day.day) do |i|
    output.printf("%2d", i)
    output.print( (i + weeknum) % 7 == 0 ? "\n" : ' ' )
  end

end

print_calendar(Date.new(2006, 11, 11))
puts

print "\n按Enter退出……"
gets
exit


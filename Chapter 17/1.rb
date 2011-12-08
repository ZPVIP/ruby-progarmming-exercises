#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (1) 请定义一个zparsetime方法，将“2006 年 12 月 23 日下午 8 时 17 分 50 秒”这样包含“年、月、日、时、分、秒” 信息的中文字符串转换成Time对象。

EOF

def zparsetime(str)
  if /(\d{4})\s*年\s*(\d{1,2})\s*月\s*(\d{1,2})\s*日(下午|上午)\s*(\d{1,2})\s*时\s*(\d{1,2})\s*分\s*(\d{1,2})\s*秒/ =~ str
    Time.new($1.to_i, $2.to_i, $3.to_i, ($4 == '下午' ? $5.to_i + 12 : $5.to_i), $6.to_i, $7.to_i)
  else
    raise ArgumentError, '必须包含“年、月、日、时、分、秒”'
  end
end

puts 'p zparsetime("2006 年 12 月 23 日下午 8 时 17 分 50 秒")'
print '  #=> '
p zparsetime("2006 年 12 月 23 日下午 8 时 17 分 50 秒")

print "\n按Enter退出……"
gets
exit


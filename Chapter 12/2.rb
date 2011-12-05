#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
     (2) 定义一个kan2num方法，将“七千一百二十三”这种中文数字表达方式，转换成“7123”这种数值表达方式。

EOF

def kan2num(kan)
  numbers = {
    '一' => 1,
    '二' => 2,
    '三' => 3,
    '四' => 4,
    '五' => 5,
    '六' => 6,
    '七' => 7,
    '八' => 8,
    '九' => 9,
    '零' => 0
  }
  units = {
    '千' => 1000,
    '百' => 100,
    '十' => 10
  }
  adv_units = {
    '万' => 10000,
    '亿' => 100000000,
  }
  num = [0]

  arr = []
  kan.each_char {|char| arr.push(char) }
  arr.inject(nil) {|memo, item|
    if memo != nil
      if units.key?(item)
        num[0] += numbers[memo] * units[item]
      elsif adv_units.key?(item)
        num[0] += numbers[memo] if numbers.key?(memo)
        num.push(num[0] * adv_units[item])
        num[0] = 0
      end
    end
    item
  }
  num[0] += numbers[arr.last] if numbers.key?(arr.last)

  num.inject {|memo, item| memo + item }
end

print 'p kan2num("六亿五千零三万七千一百二十三") #=> '
p kan2num('六亿五千零三万七千一百二十三')

print "\n按Enter退出……"
gets
exit


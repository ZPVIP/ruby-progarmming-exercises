#!/usr/bin/env ruby
#coding: utf-8

print <<"EOF"
    (1) 表示温度时，我们经常使用的是“摄氏温度”单位，然而美国经常使用的则是“华氏单位”。请定义一个cels2fahr 方法用来将摄氏单位转换成华氏单位。摄氏单位转换为华氏单位的公式如下：
    华氏 = 摄氏 * 9/5 + 32

    (2) 定义一个与(1)相反的fahr2cles方法，用来将华氏单位转换成摄氏单位。另外，请试着输出摄氏1度到摄氏100度之间的每一度与华氏单位的对照表。

EOF

def cels2fahr(cels)
  cels.to_f * 9/5 + 32
end

def fahr2cels(fahr)
  (fahr - 32).to_f * 5/9
end

puts "摄氏温度对华氏温度对照表"
1.upto 100 do |i|
  puts "摄氏#{i}度 = 华氏#{cels2fahr(i).round(1)}度"
end

puts
puts

puts "华氏温度对摄氏温度对照表"
1.upto 100 do |i|
  puts "华氏#{i}度 = 摄氏#{fahr2cels(i).round(1)}度"
end

print "\n按Enter键退出……"
gets
exit


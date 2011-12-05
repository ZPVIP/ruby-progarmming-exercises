#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (3) 不使用Numeric类（与其子类）的对象与方法，定义一个num2asrisk方法，将“ "12" ”这种内容为数值的字符串，转换成“************”这样以“*”构成的字符串。当然能支持3位数甚至4位数最理想。

EOF

def num2asrisk(str)
  '*' * str.to_i
end

print 'p num2asrisk("1000") #=> '
p num2asrisk("1000")

print "\n按Enter退出……"
gets
exit


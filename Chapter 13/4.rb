#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (4) Hash并没有数组%w这样的表示法。请定义一个str2hash方法，将以空白、定位、换行（正则表达式可写成“/\\s+/”） 所隔开的字符串转换成Hash。
      p str2hash("blue 蓝 white 白 \\nred 红")
      #=> {"blue" => "蓝", "white" => "白", "red" => "红"}

EOF

def str2hash(str)
  hash = {}
  arr = str.split(/\s+/)
  i = 0
  max = arr.size
  while i < max
    hash[arr[i]] = arr[i+1]
    i += 2
  end
  hash
end

print 'p str2hash("blue 蓝 white 白 \nred 红") #=> '
p str2hash("blue 蓝 white 白 \nred 红")

print "\n按Enter退出……"
gets
exit


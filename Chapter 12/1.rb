#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (1)  现在有“Ruby is an object oriented programming langauge”这个字符串，请依下列要求处理这个字符串。
      （a）建立一个数组，每个元素分别是这个字符串里的单字。
      （b）将（a）这个数组以字母顺序排序。
      （c）将（a）这个数组以字母顺序排序。但排序时不区分大小写。
      （d）将每个单字开头都转换成大写，输出“Ruby Is An Object Oriented Programming Language”这个字符串。
      （e）以下面形式表现这个字符串所包含的字符与数量（意指空白字符有6个、‘R’有1个，‘a’有4个、‘b’有……）：
          ' ': ******
          'R': *
          'a': ****
          'b': **
          'c': *

EOF

str = 'Ruby is an object oriented programming langauge'

puts '(a)'
a = str.split
print 'a = '
p a
puts

puts '(b)'
b = a.sort
print 'b = '
p b
puts

puts '(c)'
c = a.sort_by {|item| item.downcase }
print 'c = '
p c
puts

puts '(d)'
d = str.gsub(/\w*/) {|matched| matched.capitalize }
print 'd = '
p d
puts

puts '(e)'
e = []
str.each_char do|char|
  e.push(char)
end
e.sort!
e.inject(nil) {|memo, item|
  print "\n  '#{item}': " if memo != item
  print '*'
  item
}
puts

print "\n按Enter退出……"
gets
exit


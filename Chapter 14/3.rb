#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (3) 请定义一个word_capitalize方法，将以连字号隔开的英文字符串的每个单字改成Capitalize的形式（第一个字大写，其他小写）。

      p word_capitalize("in-reply-to")      #=> "In-Reply-To"
      p word_capitalize("X-MAILER")         #=> "X-Mailer"

EOF

def word_capitalize(str)
  str.gsub(/[a-zA-Z]+\-?/) {|matched| matched.capitalize }
end

p word_capitalize("in-reply-to")      #=> "In-Reply-To"
p word_capitalize("X-MAILER")         #=> "X-Mailer"


print "\n按Enter退出……"
gets
exit


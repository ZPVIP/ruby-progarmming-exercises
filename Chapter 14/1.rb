#!/usr/bin/env ruby
#coding: utf-8
puts <<EOF
    (1) 电子邮件地址的格式是“区域帐号@域名”，请建立一个正则表达式，从这中格式的字符串中分解出区域帐号存放在$1、网域名存放在$2

EOF

regular = /([a-zA-Z0-9._\-+]+)@([a-zA-Z0-9\-]+\.[a-zA-Z]+)/

regular =~ 'lolychee@gmail.com'
puts $1
puts $2

print "\n按Enter退出……"
gets
exit


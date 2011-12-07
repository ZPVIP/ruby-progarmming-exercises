#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (1) 请从文本文件中读取数据，进行下述处理。另外，这里所说的“单字”，是指空白与换行符号之外的连续文字。
      （a）计算行号
      （b）计算单字数量
      （c）计算字符数量

EOF



open('test1.txt') do |io|
  file_meta = {lines: 0, words: 0, chars: 0}

  while line = io.gets
    file_meta[:lines] = io.lineno
    file_meta[:words] += line.split.size
    file_meta[:chars] += line.size
  end

  puts "行数：#{file_meta[:lines]}"
  puts "字数：#{file_meta[:words]}"
  puts "字符数：#{file_meta[:chars]}"
end

print "\n按Enter退出……"
gets
exit


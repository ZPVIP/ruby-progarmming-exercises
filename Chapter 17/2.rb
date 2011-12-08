#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (2) 请模仿UNIX的“ls -t”指令， 定义一个ls_t方法，依时间的顺序，显示出目录下的文件。
      这个方法有一个实参：
      ls_t(想要查询的目录名称)

      这样就能将目录内的文件名称从时间最旧的显示到最新的。

EOF

def ls_t(path)
  list = []
  Dir.open(path) do |dir|
    dir.each do |name|
      list.push("#{path}/#{name}") unless /^\./ =~ name
    end
  end

  list.sort_by! do |path|
    File.stat(path).mtime
  end

  list.reverse.each do |path|
    puts path
  end
end

ls_t('..')

print "\n按Enter退出……"
gets
exit


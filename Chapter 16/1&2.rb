#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (1) $:以数组形式存放着Ruby程序库所存放的目录名称。请使用这个变量，定义一个print_libraries方法，依序输出Ruby可以使用的程序库的文件名。

    (2) 请定义一个du方法，模仿UNIX的du命令，统计目录中所有文件的总计大小。
      这个方法只需要一个实参：
      du(想查询的目录名)
EOF

def traverse(path)
  case path
  when Array
    list = []
    path.each do |item|
      list.concat(traverse(item))
    end
    list
  when String
    if FileTest.directory?(path)
      list = []
      Dir.open(path) do |dir|
        while name = dir.read
          next if name == '.'
          next if name == '..'
          list.concat(traverse("#{path}/#{name}"))
        end
      end
      list
    else
      [path]
    end
  end
end

def print_libraries
  traverse($:).each do |path|
    puts path
  end
end

def du(path)
  count = 0
  traverse(path).each do |path|
    stat = File.stat(path)
    count += stat.size
  end
  puts "#{count} B"
end

puts '(1)'
print_libraries
puts

puts '(2)'
du('../')

print "\n按Enter退出……"
gets
exit


#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (3) 请定义一个tail方法，模仿UNIX所经常使用的tail命令。
      tail方法接受两个实参：

      tail(行数，文件名)

      这样就能输出文件中倒数指定行数的数据了。例如，假设文件some_file.txt 里有100行数据时，指定“tail(10, "some_file.txt")”就会跳过前90行，在标准输出中显示出最后10行数据。

EOF

def tail(lines, filename)
  i = 0

  open(filename) do |io|
    io.seek(0, IO::SEEK_END)
    while i <= lines
      io.seek(-1, IO::SEEK_CUR)
      i += 1 if io.read(1) == "\n"
      io.seek(-1, IO::SEEK_CUR)
    end
    io.seek(1, IO::SEEK_CUR)
    puts(io.read)
  end
end

tail(3, 'test3.txt')

print "\n按Enter退出……"
gets
exit


#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (2) 请定义一个tee方法，实参可以接受一个输入用的IO对象，以及0个以上的输出用的IO对象。这个方法能从输入用的IO对象逐行读入数据，并对所有输出用的IO对象输出相同的数据（当没有指定输出用的IO对象时，则不做输出动作）。这个方法可以像下面这样用，在读取标准输入值时，一边将结果显示到标准输出，一边存储到文件中。

      def tee(input, *outputs)
      :
      end

      filename = ARGV.shift
      open(filename, "w") {|out|
        tee($stdin, $stdout, out)
      }

EOF

def tee(input, *outputs)
  input.each do |line|
    outputs.each {|output|
      output.sync = true
      output.write(line)
    }
  end
end

open("test2.txt", "w") {|out|
  tee(open("test1.txt"), $stdout, out)
}

print "\n按Enter退出……"
gets
exit


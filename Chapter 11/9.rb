#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (9)  有一个数组存放了(、)、{、} 4种元素。请定义一个balanced?方法，检查这个数组的括号是否对称。所谓的“括号是否对称”是指：
    (的数量与)相同;
    {的数量与}相同;
    “()”的对应关系与“{}”的对应关系没有交叉。

    p balanced?(%w< ( { { } ( ) } ( ) ) >)
      #=> true

    p balanced?(%w< ( { { } ( } ) ) >)
      #=> false

    所谓的“交叉”是指%w< ( { ) } >这样括号只有其中一边被扩在另一对括号里的情况，而%w< ( { } ) >这样一组对应的括号被括在另一对括号里，就不算是“交叉”。

EOF

def balanced?(arr)
  not_close_paren = 0
  not_close_brace = 0

  stack = []

  arr.each do |item|
    case item
    when '('
      not_close_paren += 1
      stack.push(item)
    when ')'
      not_close_paren -= 1
      stack.pop if stack.last == '('
    when '{'
      not_close_brace += 1
      stack.push(item)
    when '}'
      not_close_brace -= 1
      stack.pop if stack.last == '{'
    end
  end

  not_close_paren == 0 && not_close_brace == 0 && stack.length == 0 ?
  true
  :
  false
end


p balanced?(%w< ( { { } ( ) } ( ) ) >)
p balanced?(%w< ( { { } ( } ) ) >)

print "\n按Enter退出……"
gets
exit


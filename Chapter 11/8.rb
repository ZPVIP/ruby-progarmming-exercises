#!/usr/bin/env ruby
#coding: utf-8

puts <<EOF
    (8)  请定义一个方法sum_array，能将数值所构成的数组 nums1 与 nums2 相同索引的元素相加，并返回一个新数组。

EOF

def sum_array(nums1, nums2)
  length = nums1.length <=> nums2.length ? nums1.length : nums2.length

  Array.new(length) do |i|
    if nums1[i] != nil and nums2[i] != nil
      nums1[i] + nums2[i]
    elsif nums1[i] != nil
      nums1[i]
    elsif nums2[i] != nil
      nums2[i]
    end
  end
end

print 'p sum_array([1,2,3,4,5,6], [4,6,8]) #=> '
p sum_array([1,2,3,4,5,6], [4,6,8])

print "\n按Enter退出……"
gets
exit


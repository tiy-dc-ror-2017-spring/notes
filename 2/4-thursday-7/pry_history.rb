{}.length
[1,2,3].each do |i|
  puts i
end
exit
Proc.new { |acc, el|  acc + el}
sum_stuff = _
ls sum_stuff
[1,2,3,4].reduce(0, &sum_stuff)
exit

def for_each(arr)
  x = 0
  while x < arr.length
    yield arr[x]
    x += 1
  end
end

array = ["Dit", "is", "een", "array"]
#array = %w(Dit is ook een array van strings)

puts "for_each(array)"
for_each(array) do |item|
  puts item
end

puts "\narray.each"
array.each do |item|
  puts item
end
letters = { ?k => 'aeiou', ?m => 'bcdfghrjklmnpqrstvwxyz'}
generator = "mkmkm"
domain = ""

generator.each_byte do |x|
  source = letters[x]
  domain << source[rand(source.length)].chr
end

puts domain
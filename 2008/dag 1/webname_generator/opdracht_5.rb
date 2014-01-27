require 'open-uri'

def domain_available?( domain, tld, check_local = true )
  available = false
  if check_local
    request = `whois #{domain}.#{tld}`
    available = request.include?("No match for")
  else
    open("http://whois.net/whois_new.cgi?d=#{domain}&tld=#{tld}") do |f|
      request = f.read
    end
    available = request.include?("Domain name is not currently registered. Available for you now!")
  end
  return request.downcase.include?("no match for")
end

puts "|----------------------------------"
puts "| available sites:"
puts "|----------------------------------"

sites = []

while sites.length < 10 do
  letters = { ?k => 'aeiou', ?m => 'bcdfghrjklmnpqrstvwxyz'}
  generator = 'mkkmk'
  domain = ''
  tld = 'com'
  
  generator.each_byte do |x|
    source = letters[x]
    domain << source[rand(source.length)].chr
  end

  if domain_available?(domain, tld)
    sites << domain + "." + tld
    puts "| " + domain + "." + tld
  end

#  puts "\tlocal: " + (domain_available?(domain, tld) ? "available" : "taken")
#  puts "\tremote: " + (domain_available?(domain, tld, false) ? "available" : "taken")
end
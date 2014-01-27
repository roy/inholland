require 'open-uri'

def domain_available?( domain, check_local = true )
  available = false
  if check_local
    request = `whois #{domain}.#{tld}`
    available = request.include?("No match for")
  else
    open("http://whois.net/whois_new.cgi?d=#{domain}&tld=com") do |f|
      request = f.read
    end
    available = request.include?("Domain name is not currently registered. Available for you now!")
  end
  return request.downcase.include?("no match for")
end

puts domain_available?( "foobar", false )
require 'net/https'

uri = URI.parse("https://localhost:9394/")

cert = File.read("config/client.crt")
key  = File.read("config/client.key")

http = Net::HTTP.new(uri.host, uri.port)
http.set_debug_output $stderr
http.use_ssl = true
http.cert = OpenSSL::X509::Certificate.new(cert)
http.key = OpenSSL::PKey::RSA.new(key)
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(uri.request_uri)

resp = http.start { |cx| cx.request(request) }

puts resp.inspect
puts resp.body
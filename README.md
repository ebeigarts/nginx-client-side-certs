# Client side certifcate pass to backend with nginx

```ruby
$ bundle
$ foreman start
$ open https://localhost:9394/
$ ruby test.rb
```
Output

```
opening connection to localhost:9394...
opened
starting SSL for localhost:9394...
SSL established
<- "GET / HTTP/1.1\r\nAccept-Encoding: gzip;q=1.0,deflate;q=0.6,identity;q=0.3\r\nAccept: */*\r\nUser-Agent: Ruby\r\nHost: localhost:9394\r\n\r\n"
-> "HTTP/1.1 200 OK \r\n"
-> "Server: nginx/1.4.4\r\n"
-> "Date: Tue, 25 Feb 2014 15:01:37 GMT\r\n"
-> "Content-Type: text/plain\r\n"
-> "Transfer-Encoding: chunked\r\n"
-> "Connection: keep-alive\r\n"
-> "\r\n"
-> "81f\r\n"
reading 2079 bytes...
-> "GATEWAY_INTERFACE = CGI/1.1\nPATH_INFO = /\nQUERY_STRING = \nREMOTE_ADDR = 127.0.0.1\nREMOTE_HOST = localhost\nREQUEST_METHOD = GET\nREQUEST_URI = https://localhost:9292/\nSCRIPT_NAME = \nSERVER_NAME = localhost\nSERVER_PORT = 9292\nSERVER_PROTOCOL = HTTP/1.1\nSERVER_SOFTWARE = WEBrick/1.3.1 (Ruby/2.1.0/2013-12-25)\nHTTP_X_REQUEST_URI = /\nHTTP_X_FORWARDED_PROTO = https\nHTTP_X_SSL_CLIENT_CERT = -----BEGIN CERTIFICATE----- MIIDejCCAWICAQEwDQYJKoZIhvcNAQEFBQAwRTELMAkGA1UEBhMCQVUxEzARBgNV BAgTClNvbWUtU3RhdGUxITAfBgNVBAoTGEludGVybmV0IFdpZGdpdHMgUHR5IEx0 ZDAeFw0xNDAyMjUxNDIwNTlaFw0xNTAyMjUxNDIwNTlaMEUxCzAJBgNVBAYTAkFV MRMwEQYDVQQIEwpTb21lLVN0YXRlMSEwHwYDVQQKExhJbnRlcm5ldCBXaWRnaXRz IFB0eSBMdGQwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBANsOeFK+k6FbLP03 fu1Qo/Ebd3lrZblPZV3aH6mgY6ewQReXpEFf/8mD1vqTzVCGitV2nyD6vgi55D0b R2uArQFb2cHWyRE5MsC4IgW7/pijtWMUv+Sq5LR0kvpSkXU3/nfHoQ31Mzyg/Skd F2HUO8895lNVmbE0YjRE6loOvPV9AgMBAAEwDQYJKoZIhvcNAQEFBQADggIBAFgB +WuMPRMoXiXyVuhL0U5QbIg/VMm6HElhNxJScot+feK64/wgxU1VaAa1nuqhiVA5 cX+7w0PcAYTm2D4VLm1gE6HFY3vveQjiRw4MxMHC6wBBBXqkObGXGmzuyDJGnsaq 4S3cKMYNzpkT1aCr97ziSanZ+y1ehPwtGt1jF0wlE6hiakF85jH/flv6Yf5aqNDS OLiYkYEglwXMXiaL9Wmg8Te7L2UWcPpiAzX9nQNqyLpgSUIZ0JRcXnwoty3juZzv 14BfUPpERCD3US7Hk+T9aMA2UPIOD2rdPP515eezqt7hikhHWl1vYEzIma55V9fm 1z0kQ9uqYK7CsNGkgLEGAyCqqUNVrgzyB/euguVod8ecHe5HYPnL4+0sKMbjtjww 9HaPbq7h2t/pgGg5lqCz94W4r48H0jRXIegknylTRl2oPj2RgOKg8QbRCA3rufOD R8MTHRu7xNQTYcqR5ZLjJ3w54dbAX64CHSN1RnnLEiKmZCdUMvgRi8spxXvyKA84 3wWgEm/ER5hjbx6Q8oN/ZcXga4l1Sb2LHpkjKN21ufCwpfBN51GpRmz4o4eM9ZCB yRixjzQhDvwUs80N6LdF1n6KZjQPcCC9dHvDMKjqZaqTb3UbmARUutT3TeIl5d62 h7y+b7qyWLkDI3CE7LZBuSkmiWaXE2HEVFXXdKCs -----END CERTIFICATE-----\nHTTP_HOST = localhost:9292\nHTTP_CONNECTION = close\nHTTP_ACCEPT_ENCODING = gzip;q=1.0,deflate;q=0.6,identity;q=0.3\nHTTP_ACCEPT = */*\nHTTP_USER_AGENT = Ruby\nrack.version = [1, 1]\nrack.input = #<Rack::Lint::InputWrapper:0x007fa5a2650140>\nrack.errors = #<Rack::Lint::ErrorWrapper:0x007fa5a26500a0>\nrack.multithread = true\nrack.multiprocess = false\nrack.run_once = false\nrack.url_scheme = http\nHTTP_VERSION = HTTP/1.1\nREQUEST_PATH = /"
read 2079 bytes
reading 2 bytes...
-> "\r\n"
read 2 bytes
-> "0\r\n"
-> "\r\n"
Conn keep-alive
#<Net::HTTPOK 200 OK  readbody=true>
GATEWAY_INTERFACE = CGI/1.1
PATH_INFO = /
QUERY_STRING =
REMOTE_ADDR = 127.0.0.1
REMOTE_HOST = localhost
REQUEST_METHOD = GET
REQUEST_URI = https://localhost:9292/
SCRIPT_NAME =
SERVER_NAME = localhost
SERVER_PORT = 9292
SERVER_PROTOCOL = HTTP/1.1
SERVER_SOFTWARE = WEBrick/1.3.1 (Ruby/2.1.0/2013-12-25)
HTTP_X_REQUEST_URI = /
HTTP_X_FORWARDED_PROTO = https
HTTP_X_SSL_CLIENT_CERT = -----BEGIN CERTIFICATE----- MIIDejCCAWICAQEwDQYJKoZIhvcNAQEFBQAwRTELMAkGA1UEBhMCQVUxEzARBgNV BAgTClNvbWUtU3RhdGUxITAfBgNVBAoTGEludGVybmV0IFdpZGdpdHMgUHR5IEx0 ZDAeFw0xNDAyMjUxNDIwNTlaFw0xNTAyMjUxNDIwNTlaMEUxCzAJBgNVBAYTAkFV MRMwEQYDVQQIEwpTb21lLVN0YXRlMSEwHwYDVQQKExhJbnRlcm5ldCBXaWRnaXRz IFB0eSBMdGQwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBANsOeFK+k6FbLP03 fu1Qo/Ebd3lrZblPZV3aH6mgY6ewQReXpEFf/8mD1vqTzVCGitV2nyD6vgi55D0b R2uArQFb2cHWyRE5MsC4IgW7/pijtWMUv+Sq5LR0kvpSkXU3/nfHoQ31Mzyg/Skd F2HUO8895lNVmbE0YjRE6loOvPV9AgMBAAEwDQYJKoZIhvcNAQEFBQADggIBAFgB +WuMPRMoXiXyVuhL0U5QbIg/VMm6HElhNxJScot+feK64/wgxU1VaAa1nuqhiVA5 cX+7w0PcAYTm2D4VLm1gE6HFY3vveQjiRw4MxMHC6wBBBXqkObGXGmzuyDJGnsaq 4S3cKMYNzpkT1aCr97ziSanZ+y1ehPwtGt1jF0wlE6hiakF85jH/flv6Yf5aqNDS OLiYkYEglwXMXiaL9Wmg8Te7L2UWcPpiAzX9nQNqyLpgSUIZ0JRcXnwoty3juZzv 14BfUPpERCD3US7Hk+T9aMA2UPIOD2rdPP515eezqt7hikhHWl1vYEzIma55V9fm 1z0kQ9uqYK7CsNGkgLEGAyCqqUNVrgzyB/euguVod8ecHe5HYPnL4+0sKMbjtjww 9HaPbq7h2t/pgGg5lqCz94W4r48H0jRXIegknylTRl2oPj2RgOKg8QbRCA3rufOD R8MTHRu7xNQTYcqR5ZLjJ3w54dbAX64CHSN1RnnLEiKmZCdUMvgRi8spxXvyKA84 3wWgEm/ER5hjbx6Q8oN/ZcXga4l1Sb2LHpkjKN21ufCwpfBN51GpRmz4o4eM9ZCB yRixjzQhDvwUs80N6LdF1n6KZjQPcCC9dHvDMKjqZaqTb3UbmARUutT3TeIl5d62 h7y+b7qyWLkDI3CE7LZBuSkmiWaXE2HEVFXXdKCs -----END CERTIFICATE-----
HTTP_HOST = localhost:9292
HTTP_CONNECTION = close
HTTP_ACCEPT_ENCODING = gzip;q=1.0,deflate;q=0.6,identity;q=0.3
HTTP_ACCEPT = */*
HTTP_USER_AGENT = Ruby
rack.version = [1, 1]
rack.input = #<Rack::Lint::InputWrapper:0x007fa5a2650140>
rack.errors = #<Rack::Lint::ErrorWrapper:0x007fa5a26500a0>
rack.multithread = true
rack.multiprocess = false
rack.run_once = false
rack.url_scheme = http
HTTP_VERSION = HTTP/1.1
REQUEST_PATH = /
```

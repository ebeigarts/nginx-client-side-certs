require 'rubygems'
require 'bundler'
Bundler.setup

require 'rack'

run Proc.new { |env|
  [
    200,
    {"Content-Type" => "text/plain"},
    [ env.map { |k,v| "#{k} = #{v}" }.join("\n") ]
  ]
}

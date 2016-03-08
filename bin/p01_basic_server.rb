require 'rack'
require 'byebug'

app = Proc.new do |env|
	req = Rack::Request.new(env)
	res = Rack::Response.new

	#debugger

	res['Content-Type'] = 'text/html'
	res.write("#{env['PATH_INFO']}")
	res.finish
end

Rack::Server.start(
	app: app,
	Port: 3000
)

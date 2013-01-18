require 'webrick'
server = WEBrick::HTTPServer.new(Port: 8080)
server.mount_proc('/') do |request, response|
  response.body = "Goodbye, World!"
end
trap("INT") {server.shutdown}
server.start

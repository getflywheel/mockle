require 'socket'

# Public:  doc goes here
module Mockle
  # Publci:  doc goes here
  class Utils
    FIND_AVAILABLE_PORT = 0

    def self.find_available_port
      server = TCPServer.new(FIND_AVAILABLE_PORT)
      server.addr[1]
    ensure
      server.close if server
    end
  end
end

require 'acme-client'
require 'mockle/configuration'
require 'mockle/initializers/webmock'
require 'mockle/stub_app'
require 'mockle/utils'
require 'openssl'


# Public:  documentation goes here
module Mockle
  # Public:  documentation goes here
  extend Configuration

  # Public: documentation goes here
  def self.stub_lets_encrypt
    private_key = OpenSSL::PKey::RSA.new(4096)
 

    endpoint = 'https://acme-v01.api.letsencrypt.org/'
    # client = Acme::Client.new(private_key: private_key, endpoint: endpoint, connection_options: { request: { open_timeout: 5, timeout: 5 } })
    client = Acme::Client.new(private_key: private_key, endpoint: endpoint)
    # registration = client.register(contact: 'mailto:dev-testing@getflywheel.com')
    # registration.agree_terms
    # Webmock
    stub_request(:any, /acme-v01.api.letsencrypt.org/).to_rack(Mockle::StubApp)
    # 
  
  end
end

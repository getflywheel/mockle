class ExampleLe
  def initialize(endpoint:, private_key:)
    @client = Acme::Client.new(endpoint: endpoint, private_key: private_key)
  end

  def authorize_for_domain(domain)
    authorization = client.authorize(domain: domain)
    challenge = authorization.http01
    challenge.status == "valid"
  end

  private

  attr_reader :client
end

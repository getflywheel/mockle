require 'sinatra/base'

# Public: doc
module Mockle
  # Public:  doc
  class StubApp < Sinatra::Base
    get '/directory' do
      json_response 200, fixture('directory')
    end

    private

    def fixture(file_name)
      file_path = File.join(Mockle.fixture_path, "#{file_name}.json")
      File.open(file_path, 'rb').read
    end

    def json_response(response_code, response_body)
      content_type :json
      status response_code
      response_body
    end

    # Nope!
    # def token_fixture_name
    #   if params.key?(Mockel::BANK_ACCOUNT_OBJECT_TYPE)
    #     'create_bank_account_token'
    #   else
    #     'create_card_token'
    #   end
    # end
  end
end

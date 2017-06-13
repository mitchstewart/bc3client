require 'bc3client'

module Bc3client

  class Resource

    # :accesss_token, :account_id, :user_agent
    attr_accessor :settings
    attr_accessor :base_uri

    def initialize(settings)
      @settings = settings
      @base_uri = "https://3.basecampapi.com"
    end

    def build_uri(path)
      URI.parse(@base_uri + path)
    end

    private

      def get(uri)
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        request = Net::HTTP::Get.new(uri.request_uri)
        request['Authorization'] = "Bearer #{@settings[:access_token]}"
        request['User-Agent'] = @settings[:user_agent]
        response = http.request(request)
        JSON.parse(response.body)
      end
  end
end
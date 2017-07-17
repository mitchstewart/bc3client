require 'messenger'

module Messenger
  class Resource

    def initialize(*args)
      args = args.flatten(1) unless !args[0].is_a?(Array)
      @access_token = args[0]
      @user_agent = args[1]
      @account_id = args[2]
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
        request['Authorization'] = "Bearer #{@access_token}"
        request['User-Agent'] = @user_agent
        response = http.request(request)
        JSON.parse(response.body)
      end
  end
end
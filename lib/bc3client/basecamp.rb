require 'bc3client'
require "net/http"
require "uri"
require "bc3client/resource"
require "json"

module Bc3client

  # Initialization
  # Bc3client::Basecamp.new(
  #   :access_token => "abc",
  #   :account_id => 123
  # )
  class Basecamp < Resource

    def all
      get build_uri basecamps_path
    end

    def find_by_id(id)
      get build_uri basecamp_path(id)
    end

    private

      def basecamps_path
        "/#{@settings[:account_id]}/projects.json"
      end

      def basecamp_path(id)
        "/#{@settings[:account_id]}/projects/#{id}.json"
      end
  end
end
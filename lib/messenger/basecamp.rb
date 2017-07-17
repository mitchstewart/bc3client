require "net/http"
require "uri"
require "messenger/resource"
require "json"

module Messenger
  class Basecamp < Resource

    def initialize(*args)
      args = args.flatten(1) unless !args[0].is_a?(Array)
      super(args)
    end

    def all
      get build_uri basecamps_path
    end

    def find_by_id(id)
      get build_uri basecamp_path(id)
    end

    private

      def basecamps_path
        "/#{@account_id}/projects.json"
      end

      def basecamp_path(id)
        "/#{@account_id}/projects/#{id}.json"
      end
  end
end
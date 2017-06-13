require 'bc3client'
require "net/http"
require "uri"
require "bc3client/resource"
require "json"

module Bc3client

  # Initialization
  # Bc3client::Basecamp.new(
  #   :access_token => "abc",
  #   :account_id => 123,
  #   :project_id => 456
  # )
  class ToDoSet < Resource

    def find_by_id(todo_set_id)
      get build_uri(todo_set_path(todo_set_id))
    end

    private

      def todo_set_path(todo_set_id)
        "/#{@settings[:account_id]}/buckets/#{@settings[:project_id]}/todosets/#{todo_set_id}.json"
      end
  end
end
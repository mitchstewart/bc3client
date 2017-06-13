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
  class ToDo < Resource

    def all(todo_list_id)
      get build_uri(todos_path(todo_list_id))
    end

    def find_by_id(todo_id)
      get build_uri(todo_path(todo_id))
    end

    private

      def todos_path(todo_list_id)
        "/#{@settings[:account_id]}/buckets/#{@settings[:project_id]}/todolists/#{todo_list_id}/todos.json"
      end
    
      def todo_path(todo_id)
        "/#{@settings[:account_id]}/buckets/#{@settings[:project_id]}/todos/#{todo_id}.json"
      end
  end
end
require 'bc3client'
require "net/http"
require "uri"
require "messenger/resource"
require "json"

module Messenger
  class ToDo < Resource

    def initialize(*args)
      args = args.flatten(1) unless !args[0].is_a?(Array)
      super(args)
      @project_id = args[3]
    end

    def all(todo_list_id)
      get build_uri(todos_path(@project_id, todo_list_id))
    end

    def find_by_id(todo_id)
      get build_uri(todo_path(todo_id))
    end

    private

      def todos_path(todo_list_id)
        "/#{@account_id}/buckets/#{@project_id}/todolists/#{todo_list_id}/todos.json"
      end
    
      def todo_path(todo_id)
        "/#{@account_id}/buckets/#{@project_id}/todos/#{todo_id}.json"
      end
  end
end
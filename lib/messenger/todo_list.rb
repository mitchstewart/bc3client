require 'bc3client'
require "net/http"
require "uri"
require "messenger/resource"
require "json"

module Messenger
  class ToDoList < Resource

    def initialize(*args)
      args = args.flatten(1) unless !args[0].is_a?(Array)
      super(args)
      @project_id = args[3]
    end    
    
    def all(todo_set_id)
      puts build_uri(todo_set_path(todo_set_id))
      get build_uri(todo_set_path(todo_set_id))
    end

    def find_by_id(todo_list_id)
      get build_uri(todo_list_path(todo_list_id))
    end

    private

      def todo_set_path(todo_set_id)
        "/#{@account_id}/buckets/#{@project_id}/todosets/#{todo_set_id}/todolists.json"
      end

      def todo_list_path(todo_list_id)
        "/#{@account_id}/buckets/#{@project_id}/todolists/#{todo_list_id}.json"
      end
  end
end
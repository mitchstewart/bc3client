require 'messenger'
require "net/http"
require "uri"
require "messenger/resource"
require "json"

module Messenger
  class ToDoSet < Resource

    def initialize(*args)
      args = args.flatten(1) unless !args[0].is_a?(Array)
      super(args)
      @project_id = args[3]
    end

    def find_by_id(todo_set_id)
      get build_uri(todo_set_path(todo_set_id))
    end

    private

      def todo_set_path(todo_set_id)
        "/#{@account_id}/buckets/#{@project_id}/todosets/#{todo_set_id}.json"
      end
  end
end
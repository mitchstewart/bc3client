require 'messenger'
require "net/http"
require "uri"
require "json"
require "messenger/resource"

module Messenger
  class Client

    attr_accessor :basecamp

    def initialize(*args)
      @args = args
    end

    def basecamp
      Bc3client::Basecamp.new(@args)
    end

    def todo project_id
      Bc3client::ToDo.new Array.new(@args).push(project_id)
    end

    def todo_list project_id
      Bc3client::ToDoList.new Array.new(@args).push(project_id)
    end

    def todo_set project_id
      Bc3client::ToDoSet.new Array.new(@args).push(project_id)
    end
  end
end
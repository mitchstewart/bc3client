require 'bc3client'
require "net/http"
require "uri"
require "bc3client/resource"
require "json"

module Bc3client

  class Client

    attr_accessor :basecamp

    def initialize(*args)
      @args = args
      @basecamp = Bc3client::Basecamp.new(@args)
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
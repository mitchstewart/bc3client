require "messenger/version"
require "messenger/people"
require "messenger/resource"
require "messenger/basecamp"

module Messenger
  class Client
    attr_accessor :basecamp

    def initialize(*args)
      @args = args
      @basecamp = Messenger::Basecamp.new(@args)
    end

    def todo project_id
      Messenger::ToDo.new Array.new(@args).push(project_id)
    end

    def todo_list project_id
      Messenger::ToDoList.new Array.new(@args).push(project_id)
    end

    def todo_set project_id
      Messenger::ToDoSet.new Array.new(@args).push(project_id)
    end

    def people
      Messenger::People.new Array.new(@args)
    end
  end
end
require "spec_helper"
require 'bc3client/basecamp'
require 'bc3client/todo'
require 'bc3client/todo_list'
require 'bc3client/todo_set'

RSpec.describe Bc3client do

  let(:access_token) { "abc123" }
  let(:user_agent) { "MyApp (yourname@example.com)" }
  let(:account_id) { 11111 }
  let(:project_id) { 22222 }
  let(:todo_list_id) { 33333 }
  let(:todo_set_id) { 44444 }
  let(:todo_id) { 55555 }

  let(:basecamp) do
    Bc3client::Basecamp.new(
      :access_token => access_token,
      :user_agent => user_agent,
      :account_id => account_id)
  end
  let(:todo) do
    Bc3client::ToDo.new(
      :access_token => access_token,
      :user_agent => user_agent,
      :account_id => account_id,
      :project_id => project_id)
  end
  let(:todo_list) do
    Bc3client::ToDoList.new(
      :access_token => access_token,
      :user_agent => user_agent,
      :account_id => account_id,
      :project_id => project_id)
  end
  let(:todo_set) do
    Bc3client::ToDoSet.new(
      :access_token => access_token,
      :user_agent => user_agent,
      :account_id => account_id,
      :project_id => project_id)
  end

  it "gets basecamps" do
    puts basecamp.settings
    basecamps = basecamp.all
    expect(basecamps).not_to be nil
    basecamps.each do |bc|
      bc = basecamp.find_by_id(bc['id'])
      expect(bc).not_to be nil
    end
  end

  it "gets to-dos" do
    todos = todo.all todo_list_id
    expect(todos).not_to be nil
  end

  it "gets a to-do" do
    found_todo = todo.find_by_id(todo_id)
    expect(found_todo).not_to be nil
  end

  it "gets to-do lists" do
    todo_lists = todo_list.all todo_set_id
    expect(todo_lists).not_to be nil
  end

  it "gets a to-do list" do
    found_todo_list = todo_list.find_by_id(todo_list_id)
    expect(found_todo_list).not_to be nil
  end

  it "gets a to-do set" do
    found_todo_set = todo_set.find_by_id(todo_set_id)
    expect(found_todo_set).not_to be nil
  end
end

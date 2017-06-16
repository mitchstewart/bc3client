require "spec_helper"
require 'bc3client'
require 'bc3client/client'
require 'bc3client/basecamp'
require 'bc3client/todo'
require 'bc3client/todo_list'
require 'bc3client/todo_set'

RSpec.describe Bc3client do

  let(:access_token) { "BAhbB0kiAbB7ImNsaWVudF9pZCI6IjRkYjg1YTFmYjIwYjRiY2RmODg1YWNhNDFmZWI2NjI5MzYyODc0ZDkiLCJleHBpcmVzX2F0IjoiMjAxNy0wNi0yMVQwMTo0MzowNloiLCJ1c2VyX2lkcyI6WzMyNDYzMjA1XSwidmVyc2lvbiI6MSwiYXBpX2RlYWRib2x0IjoiZTE3Yzg5YzJkZjE5ODAzNzRkZTk4OWU2NjQwNzI5ZDEifQY6BkVUSXU6CVRpbWUNoVYdwPVfbqwJOg1uYW5vX251bWkCQwI6DW5hbm9fZGVuaQY6DXN1Ym1pY3JvIgdXkDoJem9uZUkiCFVUQwY7AEY=--6f0259e559b7d0f34aa2142ebc48fbaca2ea8bb5" }
  let(:user_agent) { "MyApp (yourname@example.com)" }
  let(:account_id) { 3735142 }
  let(:project_id) { 3515307 }
  let(:todo_list_id) { 492501801 }
  let(:todo_set_id) { 492500724 }
  let(:todo_id) { 492503957 }
  let(:client) { Bc3client::Client.new access_token, user_agent, account_id }

  it "gets basecamps" do
    basecamps = client.basecamp.all
    expect(basecamps).not_to be nil
    basecamps.each do |basecamp|
      basecamp = client.basecamp.find_by_id basecamp['id']
      expect(basecamp).not_to be nil
    end
  end

  it "gets to-dos" do
    todos = client.todo.all(project_id, todo_list_id)
    expect(todos).not_to be nil
  end

  it "gets a to-do" do
    todo = client.todo(project_id).find_by_id(todo_id)
    expect(todo).not_to be nil
  end

  it "gets to-do lists" do
    todo_lists = client.todo_list(project_id).all(todo_set_id)
    expect(todo_lists).not_to be nil
  end

  it "gets a to-do list" do
    todo_list = client.todo_list(project_id).find_by_id(todo_list_id)
    expect(todo_list).not_to be nil
  end

  it "gets a to-do set" do
    todo_set = client.todo_set(project_id).find_by_id(todo_set_id)
    expect(todo_set).not_to be nil
  end
end

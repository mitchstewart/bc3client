require "spec_helper"
require 'messenger'
require 'pry'

RSpec.describe Messenger do

  let(:access_token) { "BAhbB0kiAbB7ImNsaWVudF9pZCI6IjRkYjg1YTFmYjIwYjRiY2RmODg1YWNhNDFmZWI2NjI5MzYyODc0ZDkiLCJleHBpcmVzX2F0IjoiMjAxNy0wNy0zMFQxNTowNTozNFoiLCJ1c2VyX2lkcyI6WzMyNDYzMjA1XSwidmVyc2lvbiI6MSwiYXBpX2RlYWRib2x0IjoiZTE3Yzg5YzJkZjE5ODAzNzRkZTk4OWU2NjQwNzI5ZDEifQY6BkVUSXU6CVRpbWUNz1sdwOlHLBYJOg1uYW5vX251bWkClAM6DW5hbm9fZGVuaQY6DXN1Ym1pY3JvIgeRYDoJem9uZUkiCFVUQwY7AEY=--abb809355a3af9c042d23d601fe13bff666b534a" }
  let(:user_agent) { "MyApp (yourname@example.com)" }
  let(:account_id) { 3735142 }
  let(:project_id) { 3515307 }
  let(:todo_list_id) { 492501801 }
  let(:todo_set_id) { 492500724 }
  let(:todo_id) { 492503957 }
  let(:messenger) { Messenger::Client.new access_token, user_agent, account_id }

  it "gets basecamps" do
    basecamps = messenger.basecamp.all
    expect(basecamps).not_to be nil
    basecamps.each do |basecamp|
      basecamp = messenger.basecamp.find_by_id basecamp['id']
      expect(basecamp).not_to be nil
    end
  end

  # rspec ./spec/bc3client_spec.rb:26
  it "gets my profile" do
    profile = messenger.people.my_profile
    binding.pry
    expect(profile).not_to be nil
  end

  it "gets to-dos" do
    todos = messenger.todo.all(project_id, todo_list_id)
    expect(todos).not_to be nil
  end

  it "gets a to-do" do
    todo = messenger.todo(project_id).find_by_id(todo_id)
    expect(todo).not_to be nil
  end

  it "gets to-do lists" do
    todo_lists = messenger.todo_list(project_id).all(todo_set_id)
    expect(todo_lists).not_to be nil
  end

  it "gets a to-do list" do
    todo_list = messenger.todo_list(project_id).find_by_id(todo_list_id)
    expect(todo_list).not_to be nil
  end

  it "gets a to-do set" do
    todo_set = messenger.todo_set(project_id).find_by_id(todo_set_id)
    expect(todo_set).not_to be nil
  end
end
require 'test_helper'

class TodoControllerTest < ActionDispatch::IntegrationTest

  test "find all todos" do
    get '/todos'

    assert_response :ok

    todos = JSON.parse(@response.body, object_class: OpenStruct)

    assert_equal 2, todos.length

    todo1 = todos.first
    todo2 = todos.second

    assert_equal 1, todo1.id
    assert_equal 2, todo2.id
  end

end

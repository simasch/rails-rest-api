require 'test_helper'

class TodoControllerControllerTest < ActionDispatch::IntegrationTest

  test "Get first todo" do

    get '/todos/1'

    firstTodo = JSON.parse(@response.body)

    assert_equal 1, firstTodo['id']
  end
end

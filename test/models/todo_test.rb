require 'test_helper'

class TodoTest < ActiveSupport::TestCase

  test "Find 1 by ID" do
    todo1 = Todo.find(1)

    assert_equal 'Todo 1', todo1.title
  end
end

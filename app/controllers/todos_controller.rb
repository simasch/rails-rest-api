class TodosController < ApplicationController

  def index
    render json: Todo.all
  end

  def show
    render json: Todo.find(params[:id])
  end

  def create
    todo = Todo.new(todo_params)
    if todo.save
      render json: todo, status: 201
    else
      render json: todo.errors.full_messages.as_json, status: 400
    end
  end

  def update
    todo = Todo.find(params[:id])
    todo.update(todo_params)

    head status: 204
  end

  def destroy
    Todo.destroy(params[:id])

    head status: 204
  end

  private

  def todo_params
    params.permit(:title, :text, :todo)
  end

end

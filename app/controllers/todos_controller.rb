class TodosController < ApplicationController

  def index
    render json: Todo.all
  end

  def create
    todo = Todo.create!(todo_params)

    render json: todo, status: :created
  end

  def show
    todo = Todo.find(params[:id])

    render json: todo
  end

  def update
    todo = Todo.find(params[:id])
    todo.update(todo_params)

    head :no_content
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy

    head :no_content
  end

  private

  def todo_params
    params.permit(:title, :text)
  end
end

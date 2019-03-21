class TodoItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy]

  def create
    @todo_item = @todo_list.todo_items.create(item_params)
    redirect_to @todo_list
  end

  private

  def item_params
    params[:todo_item].permit(:title)
  end

  def find_item
    @todo_list = TodoList.find(:todo_list_id)
  end
end

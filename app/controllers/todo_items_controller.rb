class TodoItemsController < ApplicationController
  before_action :find_todo_list
  before_action :find_todo_item, except: [:create]

  def create
    @todo_item = @todo_list.todo_items.create(todo_item_params)
    @todo_item.deadline_date
    redirect_to @todo_list
  end

  def destroy
    @todo_item.destroy
    redirect_to @todo_list
  end

  def complete
    @todo_item.update_attribute(:completed_at, Time.now)
    redirect_to @todo_list
  end

  private

  def todo_item_params
    params[:todo_item].permit(:title, :deadline_date)
  end

  def find_todo_item
    @todo_item = @todo_list.todo_items.find(params[:id])
  end

  def find_todo_list
    @todo_list = TodoList.find(params[:todo_list_id])
  end
end

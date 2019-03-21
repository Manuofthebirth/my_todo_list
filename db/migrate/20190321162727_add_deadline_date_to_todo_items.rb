class AddDeadlineDateToTodoItems < ActiveRecord::Migration[5.2]
  def change
    add_column :todo_items, :deadline_date, :date
  end
end

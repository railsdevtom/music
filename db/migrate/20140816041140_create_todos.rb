class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :todo_item
      t.string :toget_item

      t.timestamps
    end
  end
end

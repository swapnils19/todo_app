class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :todo_name
      t.belongs_to :user
      t.belongs_to :project
      t.timestamps
    end
  end
end

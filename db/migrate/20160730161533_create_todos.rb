class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.integer :userId
      t.string :title
      t.boolean :completed
      t.timestamps null: false
    end
  end
end

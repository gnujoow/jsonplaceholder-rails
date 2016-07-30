class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :postId
      t.string :name
      t.string :email
      t.string :body
      t.timestamps null: false
    end
  end
end

class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :userId
      t.string :title
      t.timestamps null: false
    end
  end
end

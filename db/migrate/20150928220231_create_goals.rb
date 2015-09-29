class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.text :description
      t.string :location, default: 'N/A'
      t.float :price
      t.integer :likes
      t.integer :difficulty
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end

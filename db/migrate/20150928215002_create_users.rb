class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.text :description
      t.integer :days_left, default: 365


      t.timestamps null: false
    end
  end
end

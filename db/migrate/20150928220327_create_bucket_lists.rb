class CreateBucketLists < ActiveRecord::Migration
  def change
    create_table :bucket_lists do |t|
      t.belongs_to :user
      t.belongs_to :goal
      t.timestamps null: false
    end
  end
end

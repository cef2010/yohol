class AddAttachmentPictureToGoals < ActiveRecord::Migration
  def self.up
    change_table :goals do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :goals, :picture
  end
end

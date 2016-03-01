class AddAttachmentImageToDesserts < ActiveRecord::Migration
  def self.up
    change_table :desserts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :desserts, :image
  end
end

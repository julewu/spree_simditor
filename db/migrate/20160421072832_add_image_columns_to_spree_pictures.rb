class AddImageColumnsToSpreePictures < ActiveRecord::Migration
  def up
    add_attachment :spree_pictures, :image
  end

  def down
    remove_attachment :spree_pictures, :image
  end
end

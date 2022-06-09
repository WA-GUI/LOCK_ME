class AddTagligneDescriptionPhotoToServices < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :tagligne, :string
    add_column :services, :description, :text
    add_column :services, :photo, :text
  end
end

class AddUrlImageCapaToBooks < ActiveRecord::Migration[8.0]
  def change
    add_column :books, :url_image_cover, :string
  end
end

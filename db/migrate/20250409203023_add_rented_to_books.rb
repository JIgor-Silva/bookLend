class AddRentedToBooks < ActiveRecord::Migration[8.0]
  def change
    add_column :books, :rented, :boolean, default: false 
  end
end

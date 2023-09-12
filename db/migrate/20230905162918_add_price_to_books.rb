class AddPriceToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :price, :numerical
  end
end

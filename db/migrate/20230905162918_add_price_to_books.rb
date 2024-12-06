class AddPriceToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :price, :decimal, precision: 10, scale: 2
  end
end

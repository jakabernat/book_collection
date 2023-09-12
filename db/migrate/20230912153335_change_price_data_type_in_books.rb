class ChangePriceDataTypeInBooks < ActiveRecord::Migration[7.0]
  def change
    # Remove the existing "price" column
    remove_column :books, :price

    # Add a new "price" column with a string data type
    add_column :books, :price, :string
  end
end

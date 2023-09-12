class ChangePriceDataTypeInBooks < ActiveRecord::Migration[7.0]
  def change
    # Change the data type of the "price" column to a string
    change_column :books, :price, :string
  end
end

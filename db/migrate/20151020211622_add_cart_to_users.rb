class AddCartToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cart, :text
  end
end

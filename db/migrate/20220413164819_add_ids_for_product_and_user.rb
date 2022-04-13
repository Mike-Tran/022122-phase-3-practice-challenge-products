class AddIdsForProductAndUser < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :review_id, :integer
    add_column :users, :review_id, :integer
  end
end

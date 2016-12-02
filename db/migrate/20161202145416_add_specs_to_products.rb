class AddSpecsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :specs, :text
  end
end

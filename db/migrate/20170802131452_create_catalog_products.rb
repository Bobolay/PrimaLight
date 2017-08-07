class CreateCatalogProducts < ActiveRecord::Migration
  def change
    create_table :catalog_products do |t|

      t.timestamps null: false
    end
  end
end

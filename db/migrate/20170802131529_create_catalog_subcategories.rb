class CreateCatalogSubcategories < ActiveRecord::Migration
  def change
    create_table :catalog_subcategories do |t|

      t.timestamps null: false
    end
  end
end

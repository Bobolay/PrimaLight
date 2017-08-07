class CreateCatalogCategories < ActiveRecord::Migration
  def up
    create_table :catalog_categories do |t|
      t.boolean :published
      t.integer :sorting_position
      t.string :name
      t.string :url_fragment
      t.text :description
      t.attachment :image

      t.timestamps null: false
    end

    CatalogCategory.create_translation_table(:name, :url_fragment)
  end

  def down

  end
end

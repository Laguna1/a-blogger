# frozen_string_literal: true

class CreateArticleCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :article_categories do |t|
      t.references :article, null: false
      t.references :category, null: false

      t.timestamps
    end
    add_index(:articles_categories, %i[article_id category_id])
  end
end

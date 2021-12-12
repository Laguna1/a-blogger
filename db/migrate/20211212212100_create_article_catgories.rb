class CreateArticleCatgories < ActiveRecord::Migration[6.1]
  def change
    create_table :article_catgories do |t|
      t.references :category, null: false, foreign_key: true
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end

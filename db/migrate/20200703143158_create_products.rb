class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :uid
      t.references :product_category, foreign_key: true
      t.string :name
      t.string :description
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

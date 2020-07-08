class CreateContactBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_books do |t|
      t.string :uuid
      t.string :name
      t.string :status
      t.string :slug
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
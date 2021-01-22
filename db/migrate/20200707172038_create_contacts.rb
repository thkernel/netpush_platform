class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :uid
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :main_phone_number
      t.string :email
      t.string :country
      t.string :city
      t.string :address
      t.string :status
      t.string :slug
      t.text :notes
      t.references :contact_book, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

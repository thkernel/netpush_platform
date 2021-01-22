class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :uid
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :address
      t.string :phone
      t.text :description
      t.references :user, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end

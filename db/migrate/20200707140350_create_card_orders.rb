class CreateCardOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :card_orders do |t|
      t.string :uid
      t.string :civility
      t.string :first_name
      t.string :last_name
      t.datetime :birth_date
      t.string :nationality
      t.references :identity_type, foreign_key: true, index: true
      t.string :identity_number
      t.string :profession
      t.string :address
      t.string :country
      t.string :city
      t.string :mobile_phone_number
      t.string :home_phone_number
      t.string :work_phone_number
      t.string :name_on_card
      t.string :uba_customer
      t.references :uba_account_type, foreign_key: true, index: true
      t.string :uba_account_number
      t.string :email
      t.references :card_type, foreign_key: true, index: true
      t.integer :quantity
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end

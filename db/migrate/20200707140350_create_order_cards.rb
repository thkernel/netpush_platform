class CreateOrderCards < ActiveRecord::Migration[5.2]
  def change
    create_table :order_cards do |t|
      t.string :first_name
      t.string :last_name
      t.string :country
      t.string :city
      t.string :address
      t.string :phone_number
      t.string :email
      t.string :card_type
      t.integer :quantity
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end

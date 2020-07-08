class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.text :uid
      t.references :user, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
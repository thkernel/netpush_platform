class CreateWatchLists < ActiveRecord::Migration[5.2]
  def change
    create_table :watch_lists do |t|
      t.string :uid
      t.string :serial_number
      t.string :full_name
      t.string :program_list
      t.string :office
      t.text :additional_information
      t.string :party_country
      t.string :watchlist_populated_author
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

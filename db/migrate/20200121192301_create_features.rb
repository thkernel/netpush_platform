class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
      t.string :uid
      t.string :name

      t.timestamps
    end
  end
end

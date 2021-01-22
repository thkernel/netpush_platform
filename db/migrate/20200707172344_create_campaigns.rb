class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.string :uid
      t.string :title
      t.text :content
      t.datetime :start_date
      t.datetime :start_hour
      t.string :status
      t.boolean :start_immediatly
      t.text :notes
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

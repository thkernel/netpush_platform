class CreateCampaignContactbooks < ActiveRecord::Migration[5.2]
  def change
    create_table :campaign_contactbooks do |t|
      t.string :uuid
      t.references :contact_book, foreign_key: true
      t.references :campaign, foreign_key: true
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

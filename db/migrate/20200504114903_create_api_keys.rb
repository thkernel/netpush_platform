class CreateApiKeys < ActiveRecord::Migration[5.2]
  def change
    create_table :api_keys do |t|
      t.string :uid
	    t.string :client_id
      t.string :api_key
      t.string :api_secret
      t.string :access_token
      t.string :refresh_token
      t.string :status, default: "active"
      t.datetime :access_token_expire_at
      t.datetime :refresh_token_expire_at
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

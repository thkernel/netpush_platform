# == Schema Information
#
# Table name: api_keys
#
#  id                      :bigint           not null, primary key
#  client_id               :string
#  api_key                 :string
#  api_secret              :string
#  access_token            :string
#  refresh_token           :string
#  status                  :string           default("active")
#  access_token_expire_at  :datetime
#  refresh_token_expire_at :datetime
#  user_id                 :bigint
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class ApiKey < ApplicationRecord
  before_create :generate_client_id
  before_create :generate_api_key
  before_create :generate_api_secret
  #before_create :set_expiration
  belongs_to :user

  def expired?
    DateTime.now >= self.expires_at
  end

  private
  def generate_client_id
    puts "GENERATE ACCESS TOKEN"
    begin
      self.client_id = SecureRandom.hex
    end while self.class.exists?(client_id: client_id)
  
  end

  def generate_api_key
    puts "GENERATE ACCESS TOKEN"
    begin
      self.api_key = SecureRandom.hex
    end while self.class.exists?(api_key: api_key)
  
  end

  def generate_api_secret
    puts "GENERATE ACCESS TOKEN"
    begin
      self.api_secret = SecureRandom.hex
    end while self.class.exists?(api_secret: api_secret)
  
  end

  def set_expiration
    self.expires_at = DateTime.now+150
  end
end

# == Schema Information
#
# Table name: profiles
#
#  id           :bigint           not null, primary key
#  role         :string
#  profile_type :string
#  first_name   :string
#  last_name    :string
#  civility     :string
#  address      :string
#  phone        :string
#  country_id   :bigint
#  locality_id  :bigint
#  description  :text
#  speciality   :string
#  views        :bigint           default(0)
#  status       :string
#  user_id      :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Profile < ApplicationRecord
  include PgSearch::Model


  #before_save :set_status
  belongs_to :user
  
  
  

  #belongs_to :role
  # For active storage
  has_one_attached :avatar


 

  def full_name
    "#{first_name} #{last_name}"
  end

  
  
  private
 
 def set_status
	if self.profile_type == "Prestataire" && self.status.nil?
		self.status = "Disponible"
	end
 end
end

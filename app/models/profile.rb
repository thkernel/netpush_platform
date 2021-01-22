# == Schema Information
#
# Table name: profiles
#
#  id          :bigint           not null, primary key
#  first_name  :string
#  last_name   :string
#  gender      :string
#  address     :string
#  phone       :string
#  description :text
#  user_id     :bigint
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Profile < ApplicationRecord
  include PgSearch::Model
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  


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

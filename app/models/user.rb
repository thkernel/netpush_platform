# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  login                  :string
#  role_id                :bigint
#  uuid                   :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
           
   include PgSearch::Model
   include SharedUtils::Generation

   

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable#, :validatable, :confirmable, :lockable, :timeoutable


  #before_save :set_role

  belongs_to :role

  has_one :profile, dependent: :destroy
  has_one :credential, dependent: :destroy
  has_many :contact_books, dependent: :destroy
  has_many :contacts, dependent: :destroy
  has_many :card_types, dependent: :destroy
  has_many :uba_account_types, dependent: :destroy
  has_many :identity_types, dependent: :destroy
  has_many :watch_lists, dependent: :destroy





  
  accepts_nested_attributes_for :profile ,  allow_destroy: true

  def superuser?
       if self.role.name == "superuser"
              true 
       else
              false
       end
  end

  def admin?
              if self.role.name == "administrator"
                     true 
              else
                     false
              end
  end

  def user?
       if self.role.name == "user"
         true 
       else
         false
       end
  end

  def guest?
       if self.role.name == "guest"
         true 
       else
         false
       end
  end


       private 

       def set_default_status
              unless self.status.present?
                     self.status = "enable"
              end
       end

end

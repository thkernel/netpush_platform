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

class UserSerializer < ActiveModel::Serializer
    attributes :id, :email
    
    has_one :profile, dependent: :destroy
    has_one :work_place, dependent: :destroy
    belongs_to :role
    has_one :api_key, dependent: :destroy
    
    has_many :own_conversations, :class_name => "Conversation", :foreign_key => :sender_id
    has_many :foreign_conversations, :class_name => "Conversation", :foreign_key => :recipient_id
  
 end

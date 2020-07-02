# == Schema Information
#
# Table name: conversations
#
#  id           :bigint           not null, primary key
#  sender_id    :bigint
#  recipient_id :bigint
#  identifier   :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :sender_id, :recipient_id
  #has_one :sender
  #has_one :recipient
  belongs_to :sender, :foreign_key => "sender_id", :class_name => "User"
 	belongs_to :recipient, :foreign_key => "recipient_id", :class_name => "User"
	
	has_many :messages, dependent: :destroy

end

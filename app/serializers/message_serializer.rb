# == Schema Information
#
# Table name: messages
#
#  id              :bigint           not null, primary key
#  conversation_id :bigint
#  content         :string
#  read            :boolean
#  send_at         :datetime
#  read_at         :datetime
#  status          :string
#  user_id         :bigint
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :read, :send_at, :read_at, :status
  belongs_to :conversation
end

# == Schema Information
#
# Table name: card_orders
#
#  id                  :bigint           not null, primary key
#  uid                 :string
#  civility            :string
#  first_name          :string
#  last_name           :string
#  birth_date          :datetime
#  nationality         :string
#  identity_type_id    :bigint
#  identity_number     :string
#  profession          :string
#  address             :string
#  country             :string
#  city                :string
#  mobile_phone_number :string
#  home_phone_number   :string
#  work_phone_number   :string
#  name_on_card        :string
#  uba_customer        :boolean
#  uba_account_type_id :bigint
#  uba_account_number  :string
#  email               :string
#  card_type_id        :bigint
#  quantity            :integer
#  status              :string
#  notes               :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class CardOrder < ApplicationRecord

  include SharedUtils::Generate

  before_save :generate_random_number_uid
  
	# For active storage
  has_many_attached :attachments

  belongs_to :card_type
  belongs_to :identity_type
  belongs_to :uba_account_type, optional: true

end

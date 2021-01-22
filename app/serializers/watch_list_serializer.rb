# == Schema Information
#
# Table name: watch_lists
#
#  id                         :bigint           not null, primary key
#  uid                        :string
#  serial_number              :string
#  full_name                  :string
#  program_list               :string
#  office                     :string
#  additional_information     :text
#  party_country              :string
#  watchlist_populated_author :string
#  status                     :string
#  user_id                    :bigint
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#

class WatchListSerializer < ActiveModel::Serializer
  attributes :id, :uid, :serial_number, :full_name, :program_list, :office, :additional_information, :party_country, :watchlist_populated_author, :status
  has_one :user
end

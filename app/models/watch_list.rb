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

class WatchList < ApplicationRecord
  belongs_to :user
end

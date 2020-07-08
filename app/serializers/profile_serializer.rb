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

class ProfileSerializer < ActiveModel::Serializer
    include Rails.application.routes.url_helpers

    attributes :id, :profile_type, :first_name, :last_name, :civility, :address, :phone, 
    :country_id , :locality_id, :description, :speciality, :views, :status, :user_id, :avatar_url

    belongs_to :user
    belongs_to :country 
    belongs_to :locality

    def avatar_url
        rails_blob_url(object.avatar) if object.avatar.attachment
    end
 end

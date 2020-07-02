# == Schema Information
#
# Table name: structures
#
#  id                :bigint           not null, primary key
#  structure_type_id :bigint
#  name              :string
#  slogan            :string
#  address           :string
#  full_address      :string
#  street            :string
#  phone             :string
#  country_id        :bigint
#  locality_id       :bigint
#  email             :string
#  web               :string
#  latitude          :float
#  longitude         :float
#  description       :text
#  views             :bigint           default(0)
#  status            :string
#  user_id           :bigint
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class StructureSerializer < ActiveModel::Serializer
    attributes :id, :name, :structure_type_id, :address, :full_address, :street, :phone, :country_id, 
    :locality_id, :email, :web, :latitude, :longitude, :description, :views, :status, :user_id
 
  belongs_to :structure_type
  belongs_to :country
  belongs_to :locality
  belongs_to :user
  has_many :structure_analyses, dependent: :destroy
  has_many :analyses
  #has_many :medicament_orders, dependent: :destroy
  has_many :structure_medicaments, dependent: :destroy
  has_many :appointments, dependent: :destroy


  has_many :structure_profiles, dependent: :destroy
  has_many :profiles, :through => :structure_profiles, dependent: :destroy

has_many :work_place_items
has_one :schedule

end

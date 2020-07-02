# == Schema Information
#
# Table name: posts
#
#  id               :bigint           not null, primary key
#  title            :string
#  post_category_id :bigint
#  content          :text
#  excerpt          :text
#  status           :string
#  views            :bigint
#  slug             :string
#  user_id          :bigint
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class PostSerializer < ActiveModel::Serializer
    include Rails.application.routes.url_helpers

    attributes :id, :post_category_id, :title, :content, :excerpt,:views, :thumbnail_url

    belongs_to :post_category

    def thumbnail_url
        rails_blob_url(object.thumbnail) if object.thumbnail.attachment
    end
end

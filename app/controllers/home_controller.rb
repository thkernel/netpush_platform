class HomeController < ApplicationController
  layout "front"

  def index
    users = User.all 
    users.each do |user|
      user.confirm 
    end
    
    @localities = Locality.all
    @about = Post.find_by(post_category_id: PostCategory.find_by(name: "A propos de nous").id)
    @products = Product.where(product_category_id: ProductCategory.find_by(name: "Application").id)
  end

  def show
  end
end

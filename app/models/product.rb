class Product < ActiveRecord::Base
  has_many :order_items
  has_many :comments
  
 
  validates :name, presence: true

  #default_scope { where(active: true) }
  #default_scope is causing issues
  
  def highest_rating_comment
    comments.rating_desc.first
  end
  
  def average_rating
    comments.average(:rating).to_f
  end
end


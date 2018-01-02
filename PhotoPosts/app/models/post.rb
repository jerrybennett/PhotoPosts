class Post < ApplicationRecord
  belongs_to :user
  belongs_to :tag
  belongs_to :location
  has_many :reviews
  has_attached_file :post_img, styles: { post_show: "300x300>", post_index: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :post_img, content_type: /\Aimage\/.*\z/
end

class Movie < ActiveRecord::Base
  searchkick
  belongs_to :user
  has_many :reviews
  #used by paperclip
  has_attached_file :image, styles: { medium: "400x600#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

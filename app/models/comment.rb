class Comment < ActiveRecord::Base
  belongs_to :post
  validates_presence_of :body
  validates_length_of :body, :within => 4..750
end

class Article
  include Mongoid::Document
  has_many :comments, dependent: :destroy
  field :title, :type => String
  field :text, :type => String
  validates :title, length: {minimum: 5}
end

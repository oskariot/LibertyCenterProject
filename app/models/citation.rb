class Citation < ActiveRecord::Base
  validates_presence_of :body, :author
  validates_uniqueness_of :body, :message => 'already exists.'

  belongs_to :author
  has_and_belongs_to_many :categories

  scope :on_tale, lambda { where("length(citations.body) < ?", 250) }
end

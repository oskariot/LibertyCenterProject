class Author < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name, :message => 'already exists.'

  has_one :profile, :dependent => :destroy
  has_many :books
  has_many :citations
  has_many :categories, -> { uniq }, :through => :citations, :source => :categories
end

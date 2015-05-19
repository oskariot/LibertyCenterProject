class Category < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name, :message => 'already exists.'

  has_and_belongs_to_many :citations, -> { uniq }
end

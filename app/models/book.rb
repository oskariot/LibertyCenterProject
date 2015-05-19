class Book < ActiveRecord::Base
	validates_presence_of :title, :author
	validates_uniqueness_of :title, :message => 'already exists.'

	belongs_to :author
end

class Profile < ActiveRecord::Base
  validates_presence_of :full_name, :about, :author
  belongs_to :author
end

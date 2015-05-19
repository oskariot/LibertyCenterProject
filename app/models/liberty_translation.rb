class LibertyTranslation < ActiveRecord::Base
	validates_presence_of :word, :lang
end

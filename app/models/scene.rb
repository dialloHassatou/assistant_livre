class Scene < ActiveRecord::Base

	#attr_accessor :recit  :lieu :debut :fin :chapitre
        belongs_to :chapitre
	has_and_belongs_to_many :personnes
        validates :debut, :fin, :presence => true
	 

end

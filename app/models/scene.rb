class Scene < ActiveRecord::Base

	
        belongs_to :chapitre,
:class_name => "Chapitre",
:foreign_key => "numero"
	has_and_belongs_to_many :personnes
        validates :debut, :fin, :presence => true
	 

end

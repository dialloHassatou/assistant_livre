class Relationship < ActiveRecord::Base
	attr_accessor :personne_id, :scene_id

	belongs_to :personne_id, class_name: "Personne"
	belongs_to :scene_id, class_name: "Scene"

end

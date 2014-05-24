class Personne < ActiveRecord::Base
         attr_accessor :nom
	 has_and_belongs_to_many :scenes
end

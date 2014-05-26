class Personne < ActiveRecord::Base
         attr_accessor :nom
	 has_and_belongs_to_many :editors,  :class_name => "Scene" 
	 
end

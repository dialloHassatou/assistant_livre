class Personne < ActiveRecord::Base
         
	 has_and_belongs_to_many :scenes,  :class_name => "Scene" 
         validates :name, :presence => true, length: { maximum: 60 }, uniqueness: {case_sensitive: false }
          
	 
end

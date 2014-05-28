class Chapitre < ActiveRecord::Base
	#attr_accessor :name, :email
         
        validates :titre, :presence => true, length: { maximum: 60 }
         validates :numero, numericality: { only_integer: true },uniqueness: {case_sensitive: false }
        self.primary_key = "numero"
  	has_many :scenes
        has_many :anecdotes
end

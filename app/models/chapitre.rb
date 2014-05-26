class Chapitre < ActiveRecord::Base
	attr_accessor :name, :email
         
        validates :titre, :presence => true
         validates :numero, numericality: { only_integer: true }
  	has_many :scenes
        has_many :anecdotes
end

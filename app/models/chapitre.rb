class Chapitre < ActiveRecord::Base
	attr_accessor :name, :email

  	has_many :scenes
        has_many :anecdotes
end

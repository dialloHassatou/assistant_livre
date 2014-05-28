class Anecdote < ActiveRecord::Base
     belongs_to :chapitre,
:class_name => "Chapitre",
:foreign_key => "numero"
    
     validates :sujet, :presence => true
     validates :theme, :presence => true
end

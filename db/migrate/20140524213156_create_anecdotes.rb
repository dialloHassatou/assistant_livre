class CreateAnecdotes < ActiveRecord::Migration
  def change
    create_table :anecdotes do |t|
      t.text :texte
      t.string :sujet
      t.string :theme
      t.integer :chapitre_id

      t.timestamps
    end
    
  end
end

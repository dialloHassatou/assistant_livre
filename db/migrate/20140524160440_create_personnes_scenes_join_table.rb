class CreatePersonnesScenesJoinTable < ActiveRecord::Migration
  def change
  end
def self.up
	create_table :personnes_scenes, :id => false do |t|
	   t.references :personne, :scene
        end
        add_inde :personnes_article, [:personne_id, :scene_id]
  end
  def self.down
      drop_table :personnes_scenes
  end

end

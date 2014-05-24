class CreatePersonnesScenesJoinTable < ActiveRecord::Migration
  def change
	create_table :personnes_scenes do |t|
	t.integer :personne_id
	t.integer :scene_id
        
        t.timestamps
  end

  add_index :personnes_scenes, :personne_id	
  add_index :personnes_scenes, :scene_id
add_index :personnes_scenes,  [:personne_id, :scene_id], unique: true
end
		
  

end

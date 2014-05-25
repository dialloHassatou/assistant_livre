class CreatePersonnesScenesJoinTable < ActiveRecord::Migration
  def change



	create_table :personnes_scenes, id: false do |t|
	t.integer :personne_id
	t.integer :scene_id
        
        t.timestamps
  end

  
end
		
  

end

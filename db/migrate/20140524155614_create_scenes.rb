class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.text :recit
      t.string :lieu
      t.date :debut
      t.date :fin

      t.timestamps
    end
  end
end

class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
    	 t.integer :user_id, null: false, default: 0
    	 t.string :name, null: false
    	 t.integer :race_id
    	 t.integer :class_id
    end
  end
end

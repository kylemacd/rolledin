class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
    	 t.string :name, null: false
    	 t.string :description
    end
  end
end

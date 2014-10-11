class CreateClasses < ActiveRecord::Migration
  def change
    create_table :classes do |t|
    	t.string :name, null: false
		t.string :description
    end
  end
end

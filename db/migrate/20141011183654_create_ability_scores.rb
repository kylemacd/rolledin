class CreateAbilityScores < ActiveRecord::Migration
  def change
    create_table :ability_scores do |t|
    	t.integer :user_id, nulL: false
    	t.integer :str
    	t.integer :con
    	t.integer :dex
    	t.integer :int
    	t.integer :wis
    	t.integer :char
    end
  end
end

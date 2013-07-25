class CreateProficiencies < ActiveRecord::Migration
  def change
  	create_table :proficiencies do |t|
  		t.belongs_to :user
        t.belongs_to :skill
  		t.integer :rating

  		t.timestamps
  	end
  end
end

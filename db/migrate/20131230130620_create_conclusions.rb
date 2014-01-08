class CreateConclusions < ActiveRecord::Migration
  def change
    create_table :conclusions do |t|
      t.integer :analysis_id
      t.integer :medical_card_id
      t.boolean :infected

      t.timestamps
    end
  end
end

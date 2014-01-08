class CreateAnalyses < ActiveRecord::Migration
  def change
    create_table :analysis do |t|
      t.boolean :urine
      t.boolean :feces
      t.boolean :sperm
      t.boolean :hiv
      t.boolean :syphilis
      t.boolean :stds
      t.boolean :diabetes
      t.boolean :blood_clotting
      t.boolean :biochemical
      t.boolean :protein

      t.timestamps
    end
  end
end

class CreateMedicalCards < ActiveRecord::Migration
  def change
    create_table :medical_cards do |t|
      t.date :birthday
      t.text :birthplace
      t.string :sex
      t.text :diagnosis
      t.text :medicament
      t.text :patient_conditions
      t.text :treatment_status
      t.boolean :hospitalization
      t.integer :blood_groop
      t.boolean :temporary_incapacitated

      t.timestamps
    end
  end
end

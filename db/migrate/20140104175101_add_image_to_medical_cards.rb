class AddImageToMedicalCards < ActiveRecord::Migration
  def change
    add_column :medical_cards, :image, :string
  end
end

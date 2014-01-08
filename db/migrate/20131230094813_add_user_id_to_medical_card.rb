class AddUserIdToMedicalCard < ActiveRecord::Migration
  def change
    add_column :medical_cards, :user_id, :integer
  end
end

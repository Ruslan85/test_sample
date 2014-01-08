class ChangeColumnToAnalysis < ActiveRecord::Migration
  def change
    change_column(:analysis, :urine, :boolean, {default: false})
    change_column(:analysis, :feces, :boolean, {default: false})
    change_column(:analysis, :sperm, :boolean, {default: false})
    change_column(:analysis, :hiv, :boolean, {default: false})
    change_column(:analysis, :syphilis, :boolean, {default: false})
    change_column(:analysis, :stds, :boolean, {default: false})
    change_column(:analysis, :diabetes, :boolean, {default: false})
    change_column(:analysis, :blood_clotting, :boolean, {default: false})
    change_column(:analysis, :biochemical, :boolean, {default: false})
    change_column(:analysis, :protein, :boolean, {default: false})
  end
end

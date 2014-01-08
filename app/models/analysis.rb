class Analysis < ActiveRecord::Base
  self.table_name = "analyzes"
  attr_accessible :biochemical, :blood_clotting, :diabetes, :feces, :hiv, :protein, :sperm, :stds, :syphilis, :urine

  has_many :conclusions
  has_many :medical_cards, through: :conclusions
end

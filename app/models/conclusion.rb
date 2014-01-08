class Conclusion < ActiveRecord::Base
  attr_accessible :analysis_id, :infected, :medical_card_id

  belongs_to :analysis
  belongs_to :medical_card
end

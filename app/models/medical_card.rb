class MyValidator < ActiveModel::Validator
  def validate(medical_card)

    if medical_card.birthday > Date.today 
      medical_card.errors[:base] << "You have entered the wrong date"
    end
  end
end

class MedicalCard < ActiveRecord::Base
  include ActiveModel::Validations

  attr_accessible :birthday, :birthplace, :blood_groop, :diagnosis, :hospitalization, 
  :medicament, :patient_conditions, :sex, :temporary_incapacitated, :treatment_status, :user_id, :image, :remote_image_url

  belongs_to :user
  has_many :conclusions
  has_many :analysis, through: :conclusions

  mount_uploader :image, ImageUploader
  

  validates :sex, inclusion: { in: %w(male female),
    message: "%{value} is not a sex" }

  #validates : :birthday, :birthplace, :blood_groop, :diagnosis, :hospitalization, :medicament, 
  #	:patient_conditions, :sex, :temporary_incapacitated, :treatment_status, :user_id, presence: true

  validates :patient_conditions, inclusion: { in: %w(Easy Medium Heavy Very-Heavy),
    message: "%{value} is not a patient_conditions" }

  validates :blood_groop, length: { in: 1..4, 
  	message: "%{value} you must choose one of the numbers" }, numericality: { only_integer: true }

  validates_with MyValidator
end

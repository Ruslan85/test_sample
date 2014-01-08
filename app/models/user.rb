class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password

  has_one :medical_card

  before_save { email.downcase! }

  after_create :create_default_medical_card

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true


  private

  def create_default_medical_card
    image_names = ["1.jpg", "2.jpg", "3.jpg", "4.jpg"]

    image_name = image_names[rand(0..3)] 

  #  puts "Rails.root---------------#{Rails.root.join('app', 'assets', 'images', image_name)}------"
  
  # avatar = Rails.root.join('app', 'assets', 'images', image_name)

  #  puts "Avatar---------------#{File.open(avatar)}------------"

    medical_card = MedicalCard.create!(user_id:id, image: File.open(Rails.root.join('app', 'assets', 'images', image_name)), birthday:"2000-10-10", birthplace:"Kazan", sex:"male", blood_groop:1, 
      diagnosis:"fine", hospitalization:false, medicament:"aspirin", patient_conditions:"Easy", 
      temporary_incapacitated:false, treatment_status:"fine")    
  end
end
class Inquiry < ActiveRecord::Base

  validates :name,  
  presence: true,
  length: { maximum: 15 } 
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, 
  presence: true,
  length: { maximum: 255 },
  format: { with: VALID_EMAIL_REGEX, allow_blank: true}
  
end

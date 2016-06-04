class Inquiry < ActiveRecord::Base

  validates :name,  
  presence: { message: "名前の入力は必須です。" },
  length: { maximum: 15, message: "名前は15文字以内で入力ください。"  } 
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, 
  presence: { message: "メールアドレスの入力は必須です。" },
  length: { maximum: 255 },
  format: { with: VALID_EMAIL_REGEX, message: "有効なメールアドレスかご確認ください。", allow_blank: true}
  
end

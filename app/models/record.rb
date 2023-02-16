class Record < ApplicationRecord

    validates :name, presence: true, length: { maximum: 20}
    validates :fathername, presence: true, length: {minimum:3, maximum: 20}
    validates :mothername, presence: true, length: {minimum:3, maximum: 20}
    before_save {self.email=email.downcase}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i  
    validates :email, presence: true, length: { maximum: 105 },            
                     uniqueness: { case_sensitive: false },            
                     format: { with: VALID_EMAIL_REGEX }

    validates :phoneno, presence: true, length: {minimum:10, maximum: 12}
    validates :tenth, presence: true, length: {minimum:1, maximum: 2}
    validates :twelve, presence: true, length: {minimum:1, maximum: 2}
    validates :firstsem, presence: true, length: {minimum:1, maximum: 2}
    validates :secondsem, presence: true, length: {minimum:1, maximum: 2}                 

    

end
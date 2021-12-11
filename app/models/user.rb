class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, 
                       uniqueness: {case_sensitive: false}
  validates :email, presence: true, 
                    uniqueness: {case_sensitive: false},
                    format:{with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i}
  validates :mobile_no, uniqueness: true, numericality: { only_integer: true }
end 

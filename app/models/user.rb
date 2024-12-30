class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  has_many :comments, dependent: :destroy
  has_many :posts, through: :comments      

  has_many :reactions, dependent: :destroy
  has_many :posts, through: :reactions       
end

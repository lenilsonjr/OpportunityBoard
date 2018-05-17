class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :user_skills
  has_many :skills, :through => :user_skills

  validates_presence_of :name, :bio
end

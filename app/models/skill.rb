class Skill < ApplicationRecord

  belogs_to :parent, class_name: "Skill", foreign_key: "parent_id", optional: true
  has_many :children, class_name: "Skill", foreign_key: "parent_id"

  has_many :user_skills
  has_many :users, :through => :user_skills

  validates_presence_of :name

end

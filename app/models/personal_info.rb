class PersonalInfo < ApplicationRecord
  has_many :work_experiences
  has_many :skills
  has_many :contact_infos
  has_many :educational_backgrounds
  accepts_nested_attributes_for :contact_infos
end

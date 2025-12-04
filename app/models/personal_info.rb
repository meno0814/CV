class PersonalInfo < ApplicationRecord
  has_secure_password
  has_many :work_experiences
  has_many :skills
  has_many :contact_info
end

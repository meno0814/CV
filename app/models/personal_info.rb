class PersonalInfo < ApplicationRecord
  has_many :work_experiences
  has_many :skills
  has_many :contact_infos
  has_many :educational_backgrounds
  accepts_nested_attributes_for :contact_infos
  accepts_nested_attributes_for :skills
  accepts_nested_attributes_for :work_experiences
  accepts_nested_attributes_for :educational_backgrounds

  def fullname
    "#{first_name} #{last_name}"
  end
end

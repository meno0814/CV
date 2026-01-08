require 'rails_helper'

RSpec.describe PersonalInfo, type: :model do
  it { should have_many(:work_experiences) }
  it { should have_many(:skills) }
  it { should have_many(:contact_infos) }
  it { should have_many(:educational_backgrounds) }
  

  describe "#fullname" do
    it "returns combined first_name and last_name" do
        person =PersonalInfo.new(first_name: "Maynard", last_name: "Aquino")
        expect(person.fullname).to eq("Maynard Aquino")
    end
  end
end

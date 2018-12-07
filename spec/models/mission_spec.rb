require 'rails_helper'

describe Mission, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :time_in_space }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :astronauts}
  end

  describe "class methods" do
    mission_1 = astro_1.missions.create(title: "Mars One", time_in_space: 500)
    mission_2 = astro_1.missions.create(title: "Hubble Reconstruction", time_in_space: 100)

    expect(Mission.alphabetical).to eq([mission_2, mission_1])
  end
end

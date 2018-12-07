require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  describe "class methods" do
    it "average_age" do
      astro_1 = Astronaut.create(name: "Bradley Niedt", age: 28, job: "rover driver")
      astro_2 = Astronaut.create(name: "Emily Niedt", age: 32, job: "rover navigator")

      expect(Astronaut.average_age).to eq(30)
    end
  end
end

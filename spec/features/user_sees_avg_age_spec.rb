require "rails_helper"

describe "as a user" do
  describe "when I visit /astronauts" do
    it "should see the average age of all astronauts" do
      astro_1 = Astronaut.create(name: "Bradley Niedt", age: 28, job: "rover driver")
      astro_2 = Astronaut.create(name: "Emily Niedt", age: 32, job: "rover navigator")

      visit astronauts_path

      expect(page).to have_content(Astronaut.average_age)
    end
  end
end

require "rails_helper"

describe "as a user" do
  describe "when I visit /astronauts" do
    it "should see a list of astronauts with their name, age, and job" do
      astro_1 = Astronaut.create(name: "Bradley Niedt", age: 28, job: "rover driver")

      visit astronauts_path

      expect(page).to have_content(astro_1.name)
      expect(page).to have_content(astro_1.age)
      expect(page).to have_content(astro_1.job)
    end
  end
end

require "rails_helper"

describe "as a user" do
  describe "when I visit /astronauts" do
    it "should see a list of all missions for each astronaut in alphabetical order" do
      astro_1 = Astronaut.create(name: "Bradley Niedt", age: 28, job: "rover driver")
      astro_2 = Astronaut.create(name: "Emily Niedt", age: 32, job: "rover navigator")
      mission_1 = astro_1.missions.create(title: "Mars One", time_in_space: 500)
      mission_2 = astro_1.missions.create(title: "Hubble Reconstruction", time_in_space: 100)
      mission_3 = astro_1.missions.create(title: "Atlas Tests", time_in_space: 200)

      expect(all('.missions')[0]).to have_content(mission_1.title)
      expect(all('.missions')[1]).to have_content(mission_2.title)
      expect(all('.missions')[2]).to have_content(mission_3.title)
    end
  end
end

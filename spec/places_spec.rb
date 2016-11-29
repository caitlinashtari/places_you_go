require 'places'
require 'rspec'

describe(Place) do
  describe("#places") do
    it ("will output a string") do
      test_string = Place.new('Portland')
      expect(test_string.places()).to(eq('Portland'))
    end
  end

  describe(".all_places") do
    it("is empty at first") do
      expect(Place.all_places()).to(eq([]))
    end
  end
end

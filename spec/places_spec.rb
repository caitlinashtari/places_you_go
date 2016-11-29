require 'places'
require 'rspec'

describe(Place) do
  before() do
    Place.clear()
  end
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

  describe("#save") do
    it ("appends a string to the array") do
      all_places = Place.new('Seattle')
      all_places.save()
      expect(Place.all_places()).to(eq([all_places]))
    end
  end

  describe(".clear") do
    it('empties out all of the saved places') do
      Place.new("Paris").save()
      Place.clear()
      expect(Place.all_places()).to(eq([]))
    end
  end
end

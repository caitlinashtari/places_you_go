require 'places'
require 'rspec'

describe(Place) do
  describe("#places") do
    it ("will output a string") do
      test_string = Place.new('Portland')
      expect(test_string.places()).to(eq('Portland'))
    end
  end
end

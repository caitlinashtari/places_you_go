class Place
  @@all_array = []

  define_method(:initialize) do |location|
    @location = location
  end

  define_method(:places) do
     @location
  end

  define_singleton_method(:all_places) do
    @@all_array
  end

  define_method(:save) do
    @@all_array.push(self)
  end

  define_singleton_method(:clear) do
    @@all_array = []
  end


end

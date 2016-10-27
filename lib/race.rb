class Race

  attr_accessor :name
  attr_accessor :race_type
  attr_accessor :distance
  attr_accessor :km_times

  def initialize(name,race_type,distance,km_times)
    @name = name
    @race_type = race_type
    @distance = distance
    @km_times = km_times
  end

  def total_time
    sum=0
    km_times.each do |time|
      sum = sum + time
    end
    return sum
  end

  def slowest_km
    return km_times.max
  end

  def quickest_km
    return km_times.min
  end

  def avg_time_per_km
    avgTime = km_times.inject{ |sum, el| sum + el }.to_f / km_times.size
    return avgTime.round(2)
  end

end

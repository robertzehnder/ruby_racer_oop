class Racer
  attr_accessor :name
  attr_reader :races

  def initialize(name)
    @name = name
    @races = []
  end

  def add_race(race)
    @races.push(race)
  end

  def best_race(type,distance)
    quickTime=0
    theRace =""
    @races.each do |x|
      if x.race_type == type && x.distance == distance
        if quickTime == 0
          quickTime = x.total_time
          theRace = x
        elsif x.quickest_km < quickTime
          quickTime = x.total_time
          theRace = x
        end
      end
    end
    return theRace
  end


end

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, compiled_info|
    compiled_info.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, compiled_info|
    compiled_info.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, compiled_info|
    compiled_info.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  total_contestants = 0
  data[season].each do |contestant|
    total_age += contestant["age"].to_f
    total_contestants += 1
  end
  return (total_age/total_contestants).round
end

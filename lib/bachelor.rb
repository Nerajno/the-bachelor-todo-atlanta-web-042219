require 'pry'

def get_first_name_of_season_winner(data, season)
    data.each do |key, val|
        if key == season
          val.each do |contestant|
            if contestant["status"] == "Winner"
              name = contestant["name"].split(" ")
        return name[0]
      end
     end
    end
  # code here
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, val|
     val.each do |key|
      if key["occupation"] == occupation
        return key["name"]
      end
     end
  end 
end

def count_contestants_by_hometown(data, hometown)
  count = 0 
  data.each do  |season, contestants|
    contestants.each do |person|
      if person["hometown"]== hometown
        count+=1
    end
  end
end
  return count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = 0 
  data.each do |key, season_body|
    if key == season
    season_body.each do |person|
      personal_age = person["age"].to_f
      age+= personal_age
    end
    age = age.to_f
    length = season_body.length.to_f
    average_age = age/length
    return average_age.round
  end
end
end

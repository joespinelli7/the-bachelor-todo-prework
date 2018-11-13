require 'pry'

def get_first_name_of_season_winner(data, season)
  string = ""
  data[season].each do |info|
    info.each do |category, stat|
      if stat == "Winner"
        string << info["name"]
      end
    end
  end
  string = string.split
  string = string.first
end

def get_contestant_name(data, occupation)
  job = ""
  data.each do |season, info|
    info.each do |hash|
      hash.each do |category, stat|
        if stat == occupation
        job << hash["name"]
        end
      end
    end
  end
  job
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do|season, array|
    array.each do |hash|
      hash.each do |category, stat|
        if stat == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  job = []
  data.each do|season, array|
    array.each do |hash|
      hash.each do |category, stat|
        if stat == hometown
          job << hash["occupation"]
        end
      end
    end
  end
  job.first
end

def get_average_age_for_season(data, season)
  # code here
  sum_of_ages = 0.0
  numb_of_people = 0.0
  data[season].each do |hash|
    hash.each do |category, stat|
      if category == "age"
        sum_of_ages += stat.to_f
        numb_of_people += 1.0
      end
    end
  end
  sum_of_ages = sum_of_ages / numb_of_people
  sum_of_ages.round
end

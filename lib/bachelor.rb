def get_first_name_of_season_winner(data, season)
  data.each do |seasons, lists|
      if season == seasons
          lists.each do |person|
              person.each do |key, value|
                  if key == "status"
                      if value == "Winner"
                          return person["name"].split(" ")[0]
                          end
                      end
                  end
              end
          end
      end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, lists|
      lists.each do |person|
          person.each do |key, value|
              if key == "occupation"
                  if value == occupation
                      return person["name"]
                      end
                  end
              end
          end
      end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |seasons, lists|
      lists.each do |person|
          person.each do |key, value|
          if key == "hometown"
              if value == hometown
                  count += 1
                  end
              end
          end
      end
    end
    count
end

def get_occupation(data, hometown)
    selected = nil
    data.each do |seasons, contestant_arrays|
        contestant_arrays.find do |contestant|
            if contestant["hometown"] == hometown
                selected = contestant["occupation"]
            end
        end
    end
    selected
end

def get_average_age_for_season(data, season)
    ages = 0
    counter = 0
    data.each do |seasons, lists|
        if season == seasons
            lists.each do |key, value|
                ages += key["age"].to_f
                counter += 1
                end
            end
        end
    return (ages / counter).round
end












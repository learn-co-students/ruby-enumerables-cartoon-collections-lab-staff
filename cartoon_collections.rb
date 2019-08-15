def roll_call_dwarves(dwarves)
  dwarves.each_with_index {|item,index| puts "#{index+1} #{item}" }

end

def summon_captain_planet(actions)
  actions.map {|word| word.capitalize + "!"}
end

def long_planeteer_calls(commands)
  commands.any? {|word| word.size > 4}
end

def find_the_cheese(ingredients)
  cheese_types = ["cheddar", "gouda", "camembert"]
  indexes = []
  cheese_types.each do |cheese|
    if ingredients.include?(cheese)
      indexes.push(ingredients.index(cheese))
    end

  end
  if indexes.size > 0
    return ingredients[indexes.min]
  else
    return nil
  end
end

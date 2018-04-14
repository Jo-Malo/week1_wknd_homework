def pet_shop_name(shop)
  shop[:name]
end

def total_cash(sum)
  sum[:admin][:total_cash]
end

# def add_or_remove_cash(total_cash, add_cash)
#   total_cash[:admin][:total_cash] += (add_cash)
# end
#
# def add_or_remove_cash(total_cash, remove_cash)
#   total_cash[:admin][:total_cash] -= (remove_cash)
# end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(pets_sold, add_pets)
  pets_sold[:admin][:pets_sold] += add_pets
end

def stock_count(total)
  total[:pets].length
end

def pets_by_breed(shop, breed)
  i = 0
  total = Array.new
  for pet in shop[:pets]
     total.push(pet) if shop[:pets][i][:breed] == breed
     i += 1
  end
  return total
end

def pets_by_breed(shop, breed)
  i = 0
  total = Array.new
  for pet in shop[:pets]
     total.push(pet) if shop[:pets][i][:breed] == breed
     i += 1
  end
  return total
end

def find_pet_by_name(pets, names)
  for animal in pets[:pets]
    if (names == animal[:name])
      return animal
    end
  end
#
#   clients.select{|key, hash| hash["client_id"] == "2180" }

# def find_pet_by_name()
#   pets.each do |name, value|
#     puts key
#     puts value
#   end

# def pet_by_name()
#   for pet in shop[:pets]
#     return pets[:names]
#   end
#end
end

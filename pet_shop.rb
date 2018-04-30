def pet_shop_name(shop)
  shop[:name]
end

def total_cash(sum)
  sum[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

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

def find_pet_by_name(shop, name)
  match = nil
  for pet in shop[:pets]
    match = pet if(pet[:name] == name)
  end
  return match
end

def remove_pet_by_name(pet_shop, pet_name)
  pet_to_delete = find_pet_by_name(pet_shop, pet_name)
  pet_shop[:pets].delete(pet_to_delete)
end

def add_pet_to_stock(shop, pet)
  shop[:pets].push(pet)
end



end

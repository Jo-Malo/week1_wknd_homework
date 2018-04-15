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
#help from Yang, though I think I get this now.

def find_pet_by_name(shop, names)
  for animal in shop[:pets]
    if (names == animal[:name])
      return animal
    end
  end
  #thought that the above would work for test_find_pet_by_name__returns_nil too but didn't :(

# def remove_pet_name(shop, names)
#   for animal in shop[:pets]
#     if (names == animal[:name])
#       return animal.delete()
#     end
#   end
# end
#this doesn't work. stumped.

# def add_pet_to_stock(shop, new_pet)
# shop[:pets].push(new_pet)
# end



end

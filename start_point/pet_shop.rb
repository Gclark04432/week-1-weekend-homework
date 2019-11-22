def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(sum)
  return sum[:admin][:total_cash]
end

def add_or_remove_cash(shop, money)
  shop[:admin][:total_cash] += money
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, pet_sold)
  shop[:admin][:pets_sold] += pet_sold
end

def stock_count(shop)
  return shop[:pets].count()
end

def pets_by_breed(shop, breed)
  number_of_breed = []
  for pet in shop[:pets]
    if pet[:breed] == breed
      number_of_breed << breed
    end
  end
  return number_of_breed
end

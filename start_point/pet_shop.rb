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

def pets_by_breed(shop, given_breed)
  number_of_breed = []
  for pet in shop[:pets]
    if pet[:breed] == given_breed
      number_of_breed << given_breed
    end
  end
  return number_of_breed
end

def find_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet[:name] == pet_name
      pet.shift()
    end
  end
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, cash_amount)
  customer[:cash] -= cash_amount
end

def customer_pet_count(customer)
  return customer[:pets].count()
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
  customer[:cash] >= new_pet[:price] ? true : false
end

def sell_pet_to_customer(shop, pet, customer)
  if pet == nil
    return 0
  else
    customer[:pets] << find_pet_by_name(shop, pet)
    customer[:cash] -= pet[:price]
    shop[:admin][:total_cash] += pet[:price]
    shop[:admin][:pets_sold] += 1
  end
end

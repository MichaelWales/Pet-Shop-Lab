def pet_shop_name(pet_shop)
  pet_shop[:name]
end

def total_cash(pet_shop)
  pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  pet_shop[:admin][:total_cash] = pet_shop[:admin][:total_cash] + cash
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, pet_sales)
  pet_shop[:admin][:pets_sold] = pet_shop[:admin][:pets_sold] + pet_sales
end

def stock_count(pet_shop)
  pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  total_breed = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      total_breed << 1
    end
  end
  return total_breed
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet[:name] = nil
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
  return pet_shop[:pets].length()
end

def customer_cash(customer)
  if customer[:cash] == 1000
    return customer[:cash]
  end
  return nil
end

def remove_customer_cash(customer, removed_cash)
  customer[:cash] = customer[:cash] - removed_cash
end

def customer_pet_count(customer)
  customer[:pets].length()
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
    if customer[:cash] >= new_pet[:price]
     return true
    end
  return false
end

# def sell_pet_to_customer__pet_found(pet_shop, pet, customer)
#
# end

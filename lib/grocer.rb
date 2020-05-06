grocery_shelf = [
  { :item => "CANNED BEANS", :price => 3.00, :clearance => true },
  { :item => "CANNED CORN", :price => 2.50, :clearance => false },
  { :item => "SALSA", :price => 1.50, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false },
  { :item => "HOT SAUCE", :price => 1.75, :clearance => false }
]


def find_item_by_name_in_collection(name, collection)
  result = nil
  collection.each do |grocery_shelf|
    if grocery_shelf[:item] == name
      result = grocery_shelf
    end
  end
  result
end

find_item_by_name_in_collection("CANNED CORN", grocery_shelf )
find_item_by_name_in_collection("Dog Food", grocery_shelf )


def consolidate_cart(cart)
  index = 0
  new_cart = []
  
  cart.each do |grocery_shelf|
    current_item = find_item_by_name_in_collection(grocery_shelf[:item], new_cart)
    if current_item
      new_cart_index = 0
      new_cart.each do |new_cart_item|
        if new_cart_item[:item] === current_item[:item]
          new_cart_item[:count] += 1
        end
        new_cart_index += 1
      end
    else
      grocery_shelf[:count] = 1
      new_cart << grocery_shelf
    end
    index += 1
  end
  new_cart
end 


  
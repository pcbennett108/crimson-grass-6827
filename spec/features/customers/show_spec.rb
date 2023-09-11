require "rails_helper"

RSpec.describe "recipes show page", type: :feature do
  before :each do
    @corner = Supermarket.create!(name: "Corner Market", location: "123 Food St.")
    @fresh = Supermarket.create!(name: "Super Fresh", location: "456 Farm Rd.")

    @cheese = Item.create!( name: "Cheese",price: 4, supermarket_id: @corner.id )
    @milk = Item.create!( name: "Milk",price: 3, supermarket_id: @corner.id )
    @eggs = Item.create!( name: "Eggs",price: 7, supermarket_id: @corner.id )
    @mushrooms = Item.create!( name: "Mushrooms",price: 5, supermarket_id: @corner.id )
    @onion = Item.create!( name: "Onions",price: 2, supermarket_id: @fresh.id )
    @truff = Item.create!( name: "Truffles",price: 34, supermarket_id: @fresh.id )
    @crab = Item.create!( name: "Lump Crab Meat",price: 17, supermarket_id: @fresh.id )

    @sally = Customer.create!( name: "Sally Shopper")
    @bill = Customer.create!( name: "Bill Buyer")

    @sally_buy = CustomerItem.create!(item_id: @cheese.id, customer_id: @sally.id)
    @sally_buy = CustomerItem.create!(item_id: @eggs.id, customer_id: @sally.id)
    @sally_buy = CustomerItem.create!(item_id: @mushrooms.id, customer_id: @sally.id)
    @sally_buy = CustomerItem.create!(item_id: @onion.id, customer_id: @sally.id)

    @bill_buy = CustomerItem.create!(item_id: @crab.id, customer_id: @bill.id)
    @bill_buy = CustomerItem.create!(item_id: @milk.id, customer_id: @bill.id)
    @bill_buy = CustomerItem.create!(item_id: @onion.id, customer_id: @bill.id)
    @bill_buy = CustomerItem.create!(item_id: @truff.id, customer_id: @bill.id)

  end

#---- Story 1 -----
# As a visitor, When I visit a customer show page, 
# I see the customer's name, And I see its a list of its items 
# including the item's name, price, 
# and the name of the supermarket that it belongs to.

end
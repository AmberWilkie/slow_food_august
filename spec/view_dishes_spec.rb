require './lib/models/menu'

describe Menu do
  @fake_menu = {dish_one: {name: "sandwich", price: 80, category:"main"}, dish_two: {name: "Cinnamon Rolls", price: 90, category:"dessert"}, dish_three: {name: "olives", price: 30, category:"starters"}}
  subject = described_class.new(@fake_menu)

  before do


  end

  it 'pulls a starter from the Dish table' do
    expect(subject.starters_array[0][:name]).to eq "olives"
  end


end

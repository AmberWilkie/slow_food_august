require './lib/models/menu'

describe Menu do

  @fake_menu = {dish_one: {name: "sandwich", price: 80, category:"main"}, dish_two: {name: "Cinnamon Rolls", price: 90, category:"dessert"}, dish_three: {name: "olives", price: 30, category:"starter"}}
  subject = described_class.new(@fake_menu)

  it 'pulls a starter from the Dish table' do
    expect(subject.starters_array[0][:name]).to eq "olives"
  end

  it 'pulls a main from the Dish table' do
    expect(subject.mains_array[0][:name]).to eq "sandwich"

  end

  it 'pulls a dessert from the Dish table' do
    expect(subject.desserts_array[0][:name]).to eq "Cinnamon Rolls"
  end


end

describe 'Sad path for the Menu class' do
    @fake_menu = {dish_one: {price: 80, category:"main"}, dish_two: {name: "Cinnamon Rolls", category:"dessert"}, dish_three: {name: "olives", price: 30}}
    subject = Menu.new(@fake_menu)

  it 'does not add dishes with empty name fields' do
    expect(subject.mains_array).to be_empty
  end

  it 'does not add dishes with empty price fields' do
    expect(subject.desserts_array).to be_empty
  end

  it 'does not add dishes with empty categories' do
    expect(subject.starters_array).to be_empty
  end


end

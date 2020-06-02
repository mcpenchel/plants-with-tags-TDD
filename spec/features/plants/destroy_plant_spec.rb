# This file NEEDS to end in _spec, or else RSpec won't find it.

require 'rails_helper'

describe "destroying a plant from a garden", js: true do
  before :each do
    # url = 'https://2.bp.blogspot.com/-cjbZsW83ITU/Tt0xkXhpXxI/AAAAAAAAANk/w1FWE1QIWTE/s1600/Adam-And-Eve-Garden-Of-Eden.jpg'
    # @garden = Garden.create(name: 'Éden', banner_url: url)

    # name = 'Tree of the knowledge of good and evil'
    # url  = 'https://upload.wikimedia.org/wikipedia/commons/a/a0/Lucas_Cranach_%28I%29_-_Adam_and_Eve-Paradise_-_Kunsthistorisches_Museum_-_Detail_Tree_of_Knowledge.jpg'
    # @plant  = Plant.create(garden: @garden, name: name, image_url: url)

    @plant = create(:knowledge_tree)
    @garden = @plant.garden
  end

  it "destroys the plant and redirects back to the page" do
    visit "/gardens/#{@garden.id}"

    # Ensuring the plant exists in the DB and is displayed
    expect(Plant.count).to eq(1)
    expect(page).to have_content @plant.name

    # Destroying the plant
    find("#destroy-plant-#{@plant.id}").click

    # Ensuring the plant no longer exists in the DB and is not displayed

    expect(Plant.count).to eq(0)
    expect(page).to_not have_content @plant.name
  end
end

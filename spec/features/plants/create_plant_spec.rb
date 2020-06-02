# This file NEEDS to end in _spec, or else RSpec won't find it.

require 'rails_helper'

describe "creating a plant in a garden", js: true do
  before :each do
    @garden = create(:eden_garden)
  end

  it "creates the plant and redirects back to the page" do
    visit "/gardens/#{@garden.id}"

    # Ensuring no plant exists in the DB
    expect(Plant.count).to eq(0)

    # Filling the form and submitting
    fill_in "plant_name", with: "Ironshod's Evil Plant"
    fill_in "plant_image_url", with: "https://i.pinimg.com/originals/9c/b8/23/9cb823d9dbbc5064ab736a97a7fd9769.jpg"
    click_on 'Save your plant'

    # Ensuring the plant now exists in the DB
    expect(Plant.count).to eq(1)
    # Ensuring it belongs to the garden
    expect(Plant.last.garden_id).to eq(@garden.id)
    # Ensuring it is now displayed on the page
    expect(page).to have_content Plant.last.name
  end
end

require "rails_helper"

RSpec.describe Garden, :type => :model do

  describe 'associations' do
    it { should have_many(:plants).dependent(:destroy) }
  end

  # Instance method starts with #
  describe '#list_of_plant_names' do
    before(:each) do
      @garden = create(:eden_garden)
    end

    context 'when empty' do
      it 'returns "nothing was planted here"' do
        expect(@garden.list_of_plant_names).to eq("nothing was planted here")
      end
    end

    context 'when with one plant' do
      before(:each) do
        create(:knowledge_tree, garden: @garden, name: "Apple tree")
      end

      it 'returns one name without any commas' do
        expect(@garden.list_of_plant_names).to eq("Apple tree")
      end
    end

    context 'when with more than one plant' do
      before(:each) do
        create(:knowledge_tree, garden: @garden)
        create(:knowledge_tree, garden: @garden)
      end

      it 'returns the names separated by comma and space' do
        plant_name = Plant.last.name
        expect(@garden.list_of_plant_names).to eq("#{plant_name}, #{plant_name}")
      end
    end
  end

  # Class method starts with . or ::
  describe '.poetic_description' do
    it 'returns the correct description' do
      message = "Life is the most fertile garden. If you plan seeds of love, flowers of happiness will grow to fill your soul."
      expect(Garden.poetic_description).to eq(message)
    end
  end

end

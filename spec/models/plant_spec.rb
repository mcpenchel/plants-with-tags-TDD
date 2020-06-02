require "rails_helper"

RSpec.describe Plant, :type => :model do

  describe 'associations' do
    it { should belong_to(:garden) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:image_url) }
  end

end

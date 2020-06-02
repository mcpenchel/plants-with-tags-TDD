FactoryBot.define do
  factory :knowledge_tree, class: 'Plant' do
    association :garden, factory: :eden_garden
    name { "Tree of the knowledge of good and evil" }
    image_url { "https://upload.wikimedia.org/wikipedia/commons/a/a0/Lucas_Cranach_%28I%29_-_Adam_and_Eve-Paradise_-_Kunsthistorisches_Museum_-_Detail_Tree_of_Knowledge.jpg" }
  end
end

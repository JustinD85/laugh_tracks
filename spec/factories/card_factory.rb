FactoryBot.define do
  factory :card do
    sequence :name {|n| "card-#{n}"}
    cost {rand 100}
    description {"Best description in the world"}
  end

end

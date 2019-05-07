FactoryBot.define do 
  factory :player do
    sequence :name {|n| "player-#{n}"}
    sequence :age { rand 100 }
    sequence :hometown {|n| "city-#{n + rand(4)}"}
    image { "https://cdn.dribbble.com/users/567082/screenshots/4356358/profile_picture.png" } 
  end

end

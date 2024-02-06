
FactoryBot.define do
    factory :weapon do
        name { FFaker::Game}
        description { FFaker::Game.title}
        power_base { (FFaker::Random.rand(3..10) * 1000).to_s}
        power_step { (FFaker::Random.rand(1..9) * 100).to_s}
        level { FFaker::Random.rand(1..99)}
    end
end

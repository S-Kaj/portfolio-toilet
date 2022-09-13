FactoryBot.define do
  factory :toilet do
    toilet_name { Faker::Address.unique.city }
    latitude { Faker::Number.between(from: 20, to: 46) }
    longtitude { Faker::Number.between(from: 123, to: 154) }
    multipurpose { false }
    m_urinal { Faker::Number.between(from: 1, to: 20) }
    m_room { Faker::Number.between(from: 1, to: 10) }
    m_washlet { false }
    w_room { Faker::Number.between(from: 1, to: 20) }
    w_washlet { false }
    open_time { "08:00:00" }
    close_time { "22:00:00" }
    remark { "備考テスト" }
    association :user
  end
end

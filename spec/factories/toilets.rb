FactoryBot.define do
  factory :toilet do
    toilet_name { "MyString" }
    latitude { 1.5 }
    longtitude { 1.5 }
    multipurpose { false }
    m_urinal { 1 }
    m_room { 1 }
    m_washlet { false }
    w_room { 1 }
    w_washlet { false }
    open_time { "2022-03-14 08:04:26" }
    close_time { "2022-03-14 08:04:26" }
    remark { "MyString" }
  end
end

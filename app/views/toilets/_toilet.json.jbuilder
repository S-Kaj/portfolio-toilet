json.extract! toilet, :id, :toilet_name, :latitude, :longtitude, :multipurpose,
                      :m_urinal, :m_room, :m_washlet, :w_room, :w_washlet,
                      :open_time, :close_time, :remark, :created_at, :updated_at
json.url toilet_url(toilet, format: :json)

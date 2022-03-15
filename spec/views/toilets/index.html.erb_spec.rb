require 'rails_helper'

RSpec.describe "toilets/index", type: :view do
  before(:each) do
    assign(:toilets, [
      Toilet.create!(
        toilet_name: "Toilet Name",
        latitude: 2.5,
        longtitude: 3.5,
        multipurpose: false,
        m_urinal: 4,
        m_room: 5,
        m_washlet: false,
        w_room: 6,
        w_washlet: false,
        remark: "Remark"
      ),
      Toilet.create!(
        toilet_name: "Toilet Name",
        latitude: 2.5,
        longtitude: 3.5,
        multipurpose: false,
        m_urinal: 4,
        m_room: 5,
        m_washlet: false,
        w_room: 6,
        w_washlet: false,
        remark: "Remark"
      )
    ])
  end

  it "renders a list of toilets" do
    render
    assert_select "tr>td", text: "Toilet Name".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: 6.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "Remark".to_s, count: 2
  end
end

require 'rails_helper'

RSpec.describe "toilets/edit", type: :view do
  before(:each) do
    @toilet = assign(:toilet, Toilet.create!(
      toilet_name: "MyString",
      latitude: 1.5,
      longtitude: 1.5,
      multipurpose: false,
      m_urinal: 1,
      m_room: 1,
      m_washlet: false,
      w_room: 1,
      w_washlet: false,
      remark: "MyString"
    ))
  end

  it "renders the edit toilet form" do
    render

    assert_select "form[action=?][method=?]", toilet_path(@toilet), "post" do

      assert_select "input[name=?]", "toilet[toilet_name]"

      assert_select "input[name=?]", "toilet[latitude]"

      assert_select "input[name=?]", "toilet[longtitude]"

      assert_select "input[name=?]", "toilet[multipurpose]"

      assert_select "input[name=?]", "toilet[m_urinal]"

      assert_select "input[name=?]", "toilet[m_room]"

      assert_select "input[name=?]", "toilet[m_washlet]"

      assert_select "input[name=?]", "toilet[w_room]"

      assert_select "input[name=?]", "toilet[w_washlet]"

      assert_select "input[name=?]", "toilet[remark]"
    end
  end
end

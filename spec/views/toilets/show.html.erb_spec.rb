require 'rails_helper'

RSpec.describe "toilets/show", type: :view do
  before(:each) do
    @toilet = assign(:toilet, Toilet.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Toilet Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Remark/)
  end
end

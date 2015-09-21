require 'rails_helper'

RSpec.describe "goals/show", type: :view do
  before(:each) do
    @goal = assign(:goal, Goal.create!(
      :name => "Name",
      :description => "Description",
      :user => nil,
      :project => nil,
      :impact => 1,
      :priority => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end

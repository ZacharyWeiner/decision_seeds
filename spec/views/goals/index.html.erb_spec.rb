require 'rails_helper'

RSpec.describe "goals/index", type: :view do
  before(:each) do
    assign(:goals, [
      Goal.create!(
        :name => "Name",
        :description => "Description",
        :user => nil,
        :project => nil,
        :impact => 1,
        :priority => 2
      ),
      Goal.create!(
        :name => "Name",
        :description => "Description",
        :user => nil,
        :project => nil,
        :impact => 1,
        :priority => 2
      )
    ])
  end

  it "renders a list of goals" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

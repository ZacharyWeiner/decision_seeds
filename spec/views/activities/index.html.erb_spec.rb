require 'rails_helper'

RSpec.describe "activities/index", type: :view do
  before(:each) do
    assign(:activities, [
      Activity.create!(
        :name => "Name",
        :description => "MyText",
        :user => nil,
        :type => "Type",
        :project => nil,
        :impact => 1,
        :effort => 2,
        :profitability => 3,
        :reach => 4,
        :total_hours => 5
      ),
      Activity.create!(
        :name => "Name",
        :description => "MyText",
        :user => nil,
        :type => "Type",
        :project => nil,
        :impact => 1,
        :effort => 2,
        :profitability => 3,
        :reach => 4,
        :total_hours => 5
      )
    ])
  end

  it "renders a list of activities" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end

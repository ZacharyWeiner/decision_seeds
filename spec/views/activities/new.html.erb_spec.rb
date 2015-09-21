require 'rails_helper'

RSpec.describe "activities/new", type: :view do
  before(:each) do
    assign(:activity, Activity.new(
      :name => "MyString",
      :description => "MyText",
      :user => nil,
      :type => "",
      :project => nil,
      :impact => 1,
      :effort => 1,
      :profitability => 1,
      :reach => 1,
      :total_hours => 1
    ))
  end

  it "renders new activity form" do
    render

    assert_select "form[action=?][method=?]", activities_path, "post" do

      assert_select "input#activity_name[name=?]", "activity[name]"

      assert_select "textarea#activity_description[name=?]", "activity[description]"

      assert_select "input#activity_user_id[name=?]", "activity[user_id]"

      assert_select "input#activity_type[name=?]", "activity[type]"

      assert_select "input#activity_project_id[name=?]", "activity[project_id]"

      assert_select "input#activity_impact[name=?]", "activity[impact]"

      assert_select "input#activity_effort[name=?]", "activity[effort]"

      assert_select "input#activity_profitability[name=?]", "activity[profitability]"

      assert_select "input#activity_reach[name=?]", "activity[reach]"

      assert_select "input#activity_total_hours[name=?]", "activity[total_hours]"
    end
  end
end

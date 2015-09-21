require 'rails_helper'

RSpec.describe "goals/new", type: :view do
  before(:each) do
    assign(:goal, Goal.new(
      :name => "MyString",
      :description => "MyString",
      :user => nil,
      :project => nil,
      :impact => 1,
      :priority => 1
    ))
  end

  it "renders new goal form" do
    render

    assert_select "form[action=?][method=?]", goals_path, "post" do

      assert_select "input#goal_name[name=?]", "goal[name]"

      assert_select "input#goal_description[name=?]", "goal[description]"

      assert_select "input#goal_user_id[name=?]", "goal[user_id]"

      assert_select "input#goal_project_id[name=?]", "goal[project_id]"

      assert_select "input#goal_impact[name=?]", "goal[impact]"

      assert_select "input#goal_priority[name=?]", "goal[priority]"
    end
  end
end

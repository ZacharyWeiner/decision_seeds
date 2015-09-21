class CreateActivitiesGoals < ActiveRecord::Migration
  def change
    create_table :activities_goals do |t|
      t.belongs_to :activity, index: true
      t.belongs_to :goal, index: true
    end
  end
end

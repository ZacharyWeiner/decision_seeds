class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.string :description
      t.references :user, index: true
      t.references :project, index: true
      t.integer :impact
      t.integer :priority

      t.timestamps
    end
  end
end

class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.references :user, index: true
      t.string :type
      t.references :project, index: true
      t.integer :impact
      t.integer :effort
      t.integer :profitability
      t.integer :reach
      t.integer :total_hours

      t.timestamps
    end
  end
end

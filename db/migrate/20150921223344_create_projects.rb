class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :name
      t.integer :impact
      t.integer :effort
      t.integer :profitiability
      t.integer :matches_with_goals
      t.references :user, index: true
      t.integer :total
      t.boolean :proposed
      t.boolean :accepted
      t.integer :duration

      t.timestamps
    end
  end
end

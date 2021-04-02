class CreateTravelPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :travel_plans do |t|
      t.integer :travel_id, null: false
      t.string :plan

      t.timestamps
    end
  end
end

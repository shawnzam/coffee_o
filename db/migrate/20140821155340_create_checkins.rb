class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.references :coffee_drinker, index: true
      t.boolean :with_mug
      t.integer :current_score

      t.timestamps
    end
  end
end

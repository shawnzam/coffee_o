class CreateCoffeeDrinkers < ActiveRecord::Migration
  def change
    create_table :coffee_drinkers do |t|
      t.string :phone_number
      t.integer :current_score

      t.timestamps
    end
  end
end

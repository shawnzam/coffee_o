class CreateDailyCodes < ActiveRecord::Migration
  def change
    create_table :daily_codes do |t|
      t.string :code_for_mug
      t.string :code_for_non_mug

      t.timestamps
    end
  end
end

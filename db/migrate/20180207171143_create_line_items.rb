class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.string :name
      t.float :booked_amount
      t.float :actual_amount
      t.float :adjustments
      t.integer :campaign_id

      t.timestamps
    end
  end
end

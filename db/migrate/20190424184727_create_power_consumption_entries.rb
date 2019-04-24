class CreatePowerConsumptionEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :power_consumption_entries do |t|
      t.string :account_number
      t.datetime :interval_time
      t.decimal :net_consumption, precision: 8, scale: 2


      t.timestamps
    end
  end
end

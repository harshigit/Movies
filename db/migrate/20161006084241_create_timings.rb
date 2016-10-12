class CreateTimings < ActiveRecord::Migration[5.0]
  def change
    create_table :timings do |t|
      t.time :timings

      t.timestamps
    end
  end
end

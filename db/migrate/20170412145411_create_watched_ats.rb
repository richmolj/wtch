class CreateWatchedAts < ActiveRecord::Migration[5.0]
  def change
    create_table :watched_ats do |t|
      t.integer :watchable_id
      t.string :watchable_type
      t.string :device

      t.timestamps
    end
  end
end

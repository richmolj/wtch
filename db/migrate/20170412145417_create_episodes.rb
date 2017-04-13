class CreateEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :episodes do |t|
      t.belongs_to :show, index: true
      t.string :name

      t.timestamps
    end
  end
end

class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :title
      t.string :speaker
      t.string :href

      t.timestamps
    end
  end
end

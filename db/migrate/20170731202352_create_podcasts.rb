class CreatePodcasts < ActiveRecord::Migration[5.0]
  def change
    create_table :podcasts do |t|
      t.string :name, null: false
      t.string :description


      t.timestamps null: false
    end
  end
end

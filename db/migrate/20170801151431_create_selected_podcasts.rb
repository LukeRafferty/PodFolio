class CreateSelectedPodcasts < ActiveRecord::Migration[5.0]
  def change
    create_table :selected_podcasts do |t|
      t.belongs_to :user
      t.belongs_to :podcast
    end
  end
end

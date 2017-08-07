class AddDetailsToPodcasts < ActiveRecord::Migration[5.0]
  def change
    add_column :podcasts, :buzzscore, :string
    add_column :podcasts, :audiosearch_id, :integer
  end
end

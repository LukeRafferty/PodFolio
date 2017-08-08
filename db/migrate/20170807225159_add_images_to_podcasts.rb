class AddImagesToPodcasts < ActiveRecord::Migration[5.0]
  def change
    add_column :podcasts, :img_url, :string
  end
end
